#Requires -Version 5.1
<#
.SYNOPSIS
    Local iOS Build & Upload to TestFlight (Windows PowerShell)
.DESCRIPTION
    Builds iOS IPA locally and uploads to TestFlight using App Store Connect API.
    
    Requirements:
    - Flutter SDK installed
    - Xcode installed (on macOS or remote macOS build machine)
    - App Store Connect API Key configured
    
    Setup:
    1. Get your API Key from App Store Connect:
       https://appstoreconnect.apple.com/access/integrations/api
    2. Set environment variables or edit this script:
       $env:APP_STORE_CONNECT_KEY_ID = "YourKeyID"
       $env:APP_STORE_CONNECT_ISSUER_ID = "YourIssuerID"
#>

[CmdletBinding()]
param(
    [string]$Flavor = "prod",
    [switch]$SkipUpload,
    [switch]$VerboseOutput
)

# Configuration
$API_KEY_ID = if ($env:APP_STORE_CONNECT_KEY_ID) { $env:APP_STORE_CONNECT_KEY_ID } else { "YOUR_KEY_ID" }
$ISSUER_ID = if ($env:APP_STORE_CONNECT_ISSUER_ID) { $env:APP_STORE_CONNECT_ISSUER_ID } else { "YOUR_ISSUER_ID" }
$API_KEY_PATH = if ($env:APP_STORE_CONNECT_API_KEY_PATH) { 
    $env:APP_STORE_CONNECT_API_KEY_PATH 
} else { 
    "$env:HOME/.appstoreconnect/private_keys/AuthKey_$API_KEY_ID.p8" 
}

# Colors
$ESC = [char]27
$RED = "$ESC[31m"
$GREEN = "$ESC[32m"
$YELLOW = "$ESC[33m"
$CYAN = "$ESC[36m"
$NC = "$ESC[0m"

Write-Host ""
Write-Host "$CYAN═══════════════════════════════════════════════════════════════$NC" -ForegroundColor Cyan
Write-Host "$CYAN  📦 Local iOS Build & TestFlight Upload (PowerShell)$NC" -ForegroundColor Cyan
Write-Host "$CYAN═══════════════════════════════════════════════════════════════$NC" -ForegroundColor Cyan
Write-Host ""

# Validate Flutter
if (-not (Get-Command flutter -ErrorAction SilentlyContinue)) {
    Write-Host "${RED}❌ Error: Flutter not found in PATH$NC" -ForegroundColor Red
    Write-Host "   Make sure Flutter SDK is installed and added to PATH"
    exit 1
}

# Validate configuration
if ($API_KEY_ID -eq "YOUR_KEY_ID" -or [string]::IsNullOrWhiteSpace($API_KEY_ID)) {
    Write-Host "${RED}❌ Error: APP_STORE_CONNECT_KEY_ID not set$NC" -ForegroundColor Red
    Write-Host "   Set it as environment variable or edit this script"
    Write-Host "   Example: `$env:APP_STORE_CONNECT_KEY_ID = 'ABC123DEF4'"
    exit 1
}

if ($ISSUER_ID -eq "YOUR_ISSUER_ID" -or [string]::IsNullOrWhiteSpace($ISSUER_ID)) {
    Write-Host "${RED}❌ Error: APP_STORE_CONNECT_ISSUER_ID not set$NC" -ForegroundColor Red
    Write-Host "   Set it as environment variable or edit this script"
    exit 1
}

# Check for API Key file
$KeyExists = Test-Path $API_KEY_PATH
if (-not $KeyExists) {
    # Try alternative path
    $AltPath = "$env:HOME/private_keys/AuthKey_$API_KEY_ID.p8"
    if (Test-Path $AltPath) {
        $API_KEY_PATH = $AltPath
        $KeyExists = $true
    }
}

if (-not $KeyExists) {
    Write-Host "${YELLOW}⚠️  API Key file not found$NC" -ForegroundColor Yellow
    Write-Host "   Expected: $API_KEY_PATH"
    Write-Host ""
    Write-Host "   To fix:"
    Write-Host "   1. Download .p8 file from App Store Connect"
    Write-Host "   2. mkdir -p ~/.appstoreconnect/private_keys"
    Write-Host "   3. Copy AuthKey_$API_KEY_ID.p8 to that folder"
    exit 1
}

Write-Host "${GREEN}✅ Configuration valid$NC" -ForegroundColor Green
Write-Host "   Key ID: $API_KEY_ID"
Write-Host "   Issuer ID: $ISSUER_ID"
Write-Host "   Key Path: $API_KEY_PATH"
Write-Host ""

# Get version info
Write-Host "${CYAN}📋 Version Info:$NC" -ForegroundColor Cyan
$pubspec = Get-Content "pubspec.yaml" -Raw
$versionLine = ($pubspec -split "`n") | Select-String "^version:" | Select-Object -First 1
if ($versionLine -match 'version:\s*(\d+\.\d+\.\d+)\+(\d+)') {
    $VERSION = $matches[1]
    $BUILD_NUMBER = $matches[2]
    Write-Host "   Version: $VERSION"
    Write-Host "   Build: $BUILD_NUMBER"
} else {
    Write-Host "   ${YELLOW}Could not parse version from pubspec.yaml$NC" -ForegroundColor Yellow
}
Write-Host ""

# Confirm build
$confirm = Read-Host "Continue with build? (y/n)"
if ($confirm -ne 'y' -and $confirm -ne 'Y') {
    Write-Host "${YELLOW}⚠️  Build cancelled$NC" -ForegroundColor Yellow
    exit 0
}

# Clean
Write-Host ""
Write-Host "${CYAN}🧹 Cleaning...$NC" -ForegroundColor Cyan
flutter clean
if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}❌ Clean failed$NC" -ForegroundColor Red
    exit 1
}

# Get dependencies
Write-Host ""
Write-Host "${CYAN}📦 Getting dependencies...$NC" -ForegroundColor Cyan
flutter pub get
if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}❌ pub get failed$NC" -ForegroundColor Red
    exit 1
}

# Build iOS
Write-Host ""
Write-Host "${CYAN}🔨 Building iOS IPA...$NC" -ForegroundColor Cyan

$buildArgs = @(
    "build", "ipa",
    "--release",
    "--export-options-plist=ios/ExportOptions.plist"
)

if ($Flavor -ne "") {
    $buildArgs += "--flavor=$Flavor"
}

flutter @buildArgs

if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}❌ Build failed$NC" -ForegroundColor Red
    exit 1
}

# Check build output
$ipaPath = "build/ios/ipa"
if (-not (Test-Path $ipaPath)) {
    Write-Host "${RED}❌ Build failed - IPA directory not found$NC" -ForegroundColor Red
    exit 1
}

$ipaFile = Get-ChildItem -Path $ipaPath -Filter "*.ipa" | Select-Object -First 1
if (-not $ipaFile) {
    Write-Host "${RED}❌ Build failed - IPA file not found$NC" -ForegroundColor Red
    exit 1
}

$ipaSize = "{0:N2} MB" -f ($ipaFile.Length / 1MB)
Write-Host "${GREEN}✅ Build successful: $($ipaFile.FullName) ($ipaSize)$NC" -ForegroundColor Green
Write-Host ""

# Skip upload if requested
if ($SkipUpload) {
    Write-Host "${YELLOW}⏭️  Upload skipped (--SkipUpload flag set)$NC" -ForegroundColor Yellow
    Write-Host "   IPA file: $($ipaFile.FullName)"
    exit 0
}

# Upload to TestFlight
Write-Host ""
Write-Host "${CYAN}📤 Uploading to TestFlight...$NC" -ForegroundColor Cyan
Write-Host "   This may take a few minutes..."
Write-Host ""

$altoolArgs = @(
    "--upload-app",
    "--type", "ios",
    "--file", $ipaFile.FullName,
    "--apiKey", $API_KEY_ID,
    "--apiIssuer", $ISSUER_ID
)

if ($VerboseOutput) {
    $altoolArgs += "--verbose"
}

xcrun altool @altoolArgs

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "$GREEN═══════════════════════════════════════════════════════════════$NC" -ForegroundColor Green
    Write-Host "$GREEN  🎉 Upload Successful!$NC" -ForegroundColor Green
    Write-Host "$GREEN═══════════════════════════════════════════════════════════════$NC" -ForegroundColor Green
    Write-Host ""
    Write-Host "   Version: $VERSION (Build $BUILD_NUMBER)"
    Write-Host "   IPA: $($ipaFile.FullName)"
    Write-Host ""
    Write-Host "   Check App Store Connect in 5-10 minutes:"
    Write-Host "   https://appstoreconnect.apple.com/apps"
} else {
    Write-Host ""
    Write-Host "$RED═══════════════════════════════════════════════════════════════$NC" -ForegroundColor Red
    Write-Host "$RED  ❌ Upload Failed (Exit code: $LASTEXITCODE)$NC" -ForegroundColor Red
    Write-Host "$RED═══════════════════════════════════════════════════════════════$NC" -ForegroundColor Red
    Write-Host ""
    Write-Host "   Common fixes:"
    Write-Host "   1. Check version/build number is unique"
    Write-Host "   2. Verify API key permissions in App Store Connect"
    Write-Host "   3. Check App Store Connect for validation errors"
    Write-Host "   4. Run with -VerboseOutput for more details"
    exit $LASTEXITCODE
}

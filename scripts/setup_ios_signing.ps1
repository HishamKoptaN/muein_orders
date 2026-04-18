# Complete iOS Signing Setup for GitHub Actions
# This script prepares everything needed for automated iOS signing

param(
    [Parameter(Mandatory=$false)]
    [string]$ProvisioningProfilePath = "",
    
    [Parameter(Mandatory=$false)]
    [string]$P12CertificatePath = "",
    
    [Parameter(Mandatory=$false)]
    [string]$P12Password = ""
)

$ErrorActionPreference = "Stop"

function Write-Step {
    param([string]$Message)
    Write-Host "" 
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host $Message -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
}

function Write-Success {
    param([string]$Message)
    Write-Host "✅ $Message" -ForegroundColor Green
}

function Write-Error {
    param([string]$Message)
    Write-Host "❌ $Message" -ForegroundColor Red
}

function Write-Info {
    param([string]$Message)
    Write-Host "ℹ️ $Message" -ForegroundColor Yellow
}

Write-Step "iOS Signing Setup for GitHub Actions"

# Step 1: Check if running on Windows
Write-Step "Step 1: System Check"
if ($IsWindows -or ($env:OS -eq "Windows_NT")) {
    Write-Success "Running on Windows"
} else {
    Write-Error "This script is designed for Windows. For Mac/Linux, use setup_ios_signing.sh"
    exit 1
}

# Step 2: Check for required tools
Write-Step "Step 2: Check Prerequisites"

$hasGit = Get-Command git -ErrorAction SilentlyContinue
$hasOpenSSL = Get-Command openssl -ErrorAction SilentlyContinue

if ($hasGit) {
    Write-Success "Git is installed"
} else {
    Write-Error "Git is not installed. Please install Git first."
    exit 1
}

if ($hasOpenSSL) {
    Write-Success "OpenSSL is installed"
} else {
    Write-Info "OpenSSL not found. You may need it for certificate conversion."
}

# Step 3: Instructions if files not provided
Write-Step "Step 3: File Preparation"

if (-not $ProvisioningProfilePath) {
    Write-Info "Provisioning Profile not provided via command line"
    Write-Host ""
    Write-Host "📋 To get your Provisioning Profile:" -ForegroundColor Yellow
    Write-Host "   1. Go to: https://developer.apple.com/account/resources/profiles/list" -ForegroundColor White
    Write-Host "   2. Download your App Store Distribution profile" -ForegroundColor White
    Write-Host "   3. Save it to your Downloads folder" -ForegroundColor White
    Write-Host ""
    
    # Try to find downloaded profiles
    $downloadsPath = "$env:USERPROFILE\Downloads"
    $profiles = Get-ChildItem -Path $downloadsPath -Filter "*.mobileprovision" -ErrorAction SilentlyContinue
    
    if ($profiles) {
        Write-Host "🔍 Found these profiles in Downloads:" -ForegroundColor Green
        $index = 1
        foreach ($prof in $profiles) {
            Write-Host "   $index. $($prof.Name)" -ForegroundColor White
            $index++
        }
        Write-Host ""
        
        $selection = Read-Host "Select profile number (or press Enter to browse)"
        if ($selection -match "^\d+$" -and $selection -gt 0 -and $selection -le $profiles.Count) {
            $ProvisioningProfilePath = $profiles[$selection - 1].FullName
        }
    }
    
    if (-not $ProvisioningProfilePath) {
        Add-Type -AssemblyName System.Windows.Forms
        $dialog = New-Object System.Windows.Forms.OpenFileDialog
        $dialog.Filter = "Provisioning Profiles (*.mobileprovision)|*.mobileprovision|All Files (*.*)|*.*"
        $dialog.Title = "Select your iOS Provisioning Profile"
        $dialog.InitialDirectory = $downloadsPath
        
        if ($dialog.ShowDialog() -eq "OK") {
            $ProvisioningProfilePath = $dialog.FileName
        }
    }
}

if (-not $ProvisioningProfilePath -or -not (Test-Path $ProvisioningProfilePath)) {
    Write-Error "Provisioning Profile not found!"
    Write-Host ""
    Write-Host "⚠️ You need to:" -ForegroundColor Yellow
    Write-Host "   1. Login to Apple Developer Portal" -ForegroundColor White
    Write-Host "   2. Go to Certificates, IDs & Profiles → Profiles" -ForegroundColor White
    Write-Host "   3. Download your Distribution profile" -ForegroundColor White
    Write-Host "   4. Run this script again with the path:" -ForegroundColor White
    Write-Host "      .\scripts\setup_ios_signing.ps1 -ProvisioningProfilePath 'C:\Path\To\profile.mobileprovision'" -ForegroundColor Cyan
    exit 1
}

Write-Success "Provisioning Profile found: $ProvisioningProfilePath"

# Step 4: Encode Provisioning Profile
Write-Step "Step 4: Encode Provisioning Profile"

try {
    $profileBytes = [System.IO.File]::ReadAllBytes($ProvisioningProfilePath)
    $profileBase64 = [Convert]::ToBase64String($profileBytes)
    
    # Save to file
    $outputFile = "ios_provisioning_profile_base64.txt"
    $profileBase64 | Out-File -FilePath $outputFile -Encoding ASCII
    
    Write-Success "Encoded successfully!"
    Write-Info "Base64 saved to: $outputFile"
    Write-Info "File size: $([Math]::Round($profileBase64.Length / 1024)) KB"
    Write-Host ""
    Write-Host "📋 First 100 characters of Base64:" -ForegroundColor Yellow
    Write-Host "$($profileBase64.Substring(0, [Math]::Min(100, $profileBase64.Length)))..." -ForegroundColor Gray
    
} catch {
    Write-Error "Failed to encode profile: $_"
    exit 1
}

# Step 5: Create GitHub Secret command
Write-Step "Step 5: GitHub Secret Setup"

Write-Host ""
Write-Host "🔐 Add this secret to your GitHub repository:" -ForegroundColor Cyan
Write-Host "   Repository: Settings → Secrets and variables → Actions → New repository secret" -ForegroundColor White
Write-Host ""
Write-Host "   Name: IOS_PROVISIONING_PROFILE_BASE64" -ForegroundColor Yellow
Write-Host "   Value: (copy from file: $outputFile)" -ForegroundColor Yellow
Write-Host ""

# Copy to clipboard
$profileBase64 | Set-Clipboard
Write-Success "Base64 copied to clipboard!"

# Step 6: Summary
Write-Step "Setup Complete!"

Write-Host ""
Write-Host "✅ What was done:" -ForegroundColor Green
Write-Host "   • Encoded Provisioning Profile to Base64" -ForegroundColor White
Write-Host "   • Saved to: $outputFile" -ForegroundColor White
Write-Host "   • Copied to clipboard" -ForegroundColor White
Write-Host ""
Write-Host "📝 Next steps:" -ForegroundColor Cyan
Write-Host "   1. Go to: https://github.com/HishamKoptaN/muein_orders/settings/secrets/actions" -ForegroundColor White
Write-Host "   2. Click 'New repository secret'" -ForegroundColor White
Write-Host "   3. Name: IOS_PROVISIONING_PROFILE_BASE64" -ForegroundColor White
Write-Host "   4. Value: Paste from clipboard" -ForegroundColor White
Write-Host "   5. Click 'Add secret'" -ForegroundColor White
Write-Host ""
Write-Host "🚀 After that, your Shorebird releases will work automatically!" -ForegroundColor Green
Write-Host ""

# Step 7: Verify workflow exists
$workflowPath = ".github\workflows\shorebird_release_ios.yml"
if (Test-Path $workflowPath) {
    Write-Success "GitHub workflow is ready: $workflowPath"
} else {
    Write-Error "Workflow not found! Please ensure shorebird_release_ios.yml exists."
}

Write-Host ""
Read-Host "Press Enter to exit"

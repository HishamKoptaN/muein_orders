# Script to encode iOS Provisioning Profile for GitHub Actions (Windows)
# Usage: .\scripts\encode_provisioning_profile.ps1 <path-to-.mobileprovision-file>

param(
    [Parameter(Mandatory=$true)]
    [string]$ProfilePath
)

if (-not (Test-Path $ProfilePath)) {
    Write-Host "❌ File not found: $ProfilePath" -ForegroundColor Red
    Write-Host ""
    Write-Host "📋 Steps:" -ForegroundColor Yellow
    Write-Host "1. Download .mobileprovision from Apple Developer Portal"
    Write-Host "2. Run: .\scripts\encode_provisioning_profile.ps1 C:\Users\You\Downloads\Muein_Orders_ios_app_store.mobileprovision"
    Write-Host "3. Copy the output and add as GitHub Secret: IOS_PROVISIONING_PROFILE_BASE64"
    exit 1
}

Write-Host "🔧 Encoding Provisioning Profile: $ProfilePath" -ForegroundColor Cyan
Write-Host ""

# Show profile info
Write-Host "📋 Profile Info:" -ForegroundColor Yellow
$content = Get-Content $ProfilePath -Raw
# Try to extract readable info
$certSection = $content -match 'Name.*?TeamName.*?ApplicationIdentifierPrefix'
if ($certSection) {
    Write-Host $certSection
}
Write-Host ""

# Encode to base64
$bytes = [System.IO.File]::ReadAllBytes($ProfilePath)
$base64 = [Convert]::ToBase64String($bytes)

Write-Host "📦 Base64 Encoded (copy this entire output):" -ForegroundColor Green
Write-Host ""
Write-Host $base64
Write-Host ""

Write-Host "✅ Done!" -ForegroundColor Green
Write-Host ""
Write-Host "🔐 Add this as GitHub Secret:" -ForegroundColor Yellow
Write-Host "   Name: IOS_PROVISIONING_PROFILE_BASE64"
Write-Host "   Value: (the base64 output above)"

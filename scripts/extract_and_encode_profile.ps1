#!/usr/bin/env pwsh
# Extract and Encode iOS Provisioning Profile for GitHub Actions
# This script helps automate the process of getting your provisioning profile ready

param(
    [Parameter(Mandatory=$false)]
    [string]$ProfilePath = ""
)

$ErrorActionPreference = "Stop"

Write-Host "🔧 iOS Provisioning Profile Encoder for GitHub Actions" -ForegroundColor Cyan
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Find profile if not provided
if (-not $ProfilePath) {
    Write-Host "📂 Looking for .mobileprovision files..." -ForegroundColor Yellow
    
    $commonPaths = @(
        "$env:USERPROFILE\Downloads",
        "$env:USERPROFILE\Desktop",
        "$env:LOCALAPPDATA\Temp"
    )
    
    $foundProfiles = @()
    foreach ($path in $commonPaths) {
        if (Test-Path $path) {
            $profiles = Get-ChildItem -Path $path -Filter "*.mobileprovision" -ErrorAction SilentlyContinue
            $foundProfiles += $profiles
        }
    }
    
    if ($foundProfiles.Count -gt 0) {
        Write-Host "✅ Found $($foundProfiles.Count) provisioning profile(s):" -ForegroundColor Green
        for ($i = 0; $i -lt $foundProfiles.Count; $i++) {
            Write-Host "   [$($i+1)] $($foundProfiles[$i].Name) - $($foundProfiles[$i].LastWriteTime)" -ForegroundColor White
        }
        Write-Host ""
        
        $choice = Read-Host "Select profile number (1-$($foundProfiles.Count)) or press Enter to browse"
        if ($choice -match '^\d+$' -and $choice -ge 1 -and $choice -le $foundProfiles.Count) {
            $ProfilePath = $foundProfiles[$choice - 1].FullName
        }
    }
    
    if (-not $ProfilePath) {
        Add-Type -AssemblyName System.Windows.Forms
        $dialog = New-Object System.Windows.Forms.OpenFileDialog
        $dialog.Filter = "Provisioning Profile (*.mobileprovision)|*.mobileprovision"
        $dialog.Title = "Select your iOS Provisioning Profile"
        
        if ($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
            $ProfilePath = $dialog.FileName
        } else {
            Write-Host "❌ No profile selected. Exiting." -ForegroundColor Red
            exit 1
        }
    }
}

# Step 2: Validate profile
if (-not (Test-Path $ProfilePath)) {
    Write-Host "❌ Profile not found: $ProfilePath" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Using profile: $ProfilePath" -ForegroundColor Green

# Step 3: Show profile info
Write-Host ""
Write-Host "📋 Profile Details:" -ForegroundColor Yellow
try {
    $content = Get-Content $ProfilePath -Raw -Encoding Byte -ErrorAction Stop
} catch {
    $content = [System.IO.File]::ReadAllBytes($ProfilePath)
}

# Step 4: Encode to Base64
Write-Host ""
Write-Host "🔐 Encoding to Base64..." -ForegroundColor Yellow

try {
    $bytes = [System.IO.File]::ReadAllBytes($ProfilePath)
    $base64 = [Convert]::ToBase64String($bytes)
    
    $outputFile = "provisioning_profile_base64.txt"
    $base64 | Out-File -FilePath $outputFile -Encoding ASCII
    
    Write-Host "✅ Encoded successfully!" -ForegroundColor Green
    Write-Host "📄 Saved to: $outputFile" -ForegroundColor Cyan
    Write-Host "📊 Size: $([Math]::Round($base64.Length / 1024)) KB" -ForegroundColor White
    
    # Copy to clipboard
    $base64 | Set-Clipboard
    Write-Host "📋 Copied to clipboard!" -ForegroundColor Green
    
} catch {
    Write-Host "❌ Failed to encode: $_" -ForegroundColor Red
    exit 1
}

# Step 5: Instructions
Write-Host ""
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host "🚀 Next Steps:" -ForegroundColor Cyan
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Go to GitHub repository settings:" -ForegroundColor Yellow
Write-Host "   https://github.com/HishamKoptaN/muein_orders/settings/secrets/actions" -ForegroundColor White
Write-Host ""
Write-Host "2. Click 'New repository secret'" -ForegroundColor Yellow
Write-Host ""
Write-Host "3. Enter:" -ForegroundColor Yellow
Write-Host "   Name: IOS_PROVISIONING_PROFILE_BASE64" -ForegroundColor White
Write-Host "   Value: (paste from clipboard or file)" -ForegroundColor White
Write-Host ""
Write-Host "4. Click 'Add secret'" -ForegroundColor Yellow
Write-Host ""
Write-Host "✅ After that, Shorebird releases will work automatically!" -ForegroundColor Green
Write-Host ""

# Pause
Read-Host "Press Enter to exit"

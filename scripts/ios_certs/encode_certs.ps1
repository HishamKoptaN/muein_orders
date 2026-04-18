#!/usr/bin/env pwsh
#Requires -Version 7.0
<#
.SYNOPSIS
    سكربت لتحويل ملفات iOS Signing إلى Base64
.DESCRIPTION
    يقوم بتحويل ملفات الشهادات والمفاتيح إلى صيغة Base64
    للاستخدام في GitHub Actions Secrets
.PARAMETER CertsPath
    مسار المجلد الذي يحتوي على ملفات الشهادات
.EXAMPLE
    .\encode_certs.ps1 -CertsPath "G:\project_assets\muein\prod\ios"
#>

param(
    [Parameter(Mandatory = $false)]
    [string]$CertsPath = "G:\project_assets\muein\prod\ios"
)

$ErrorActionPreference = "Stop"

Write-Host "🔐 iOS Certificates Base64 Encoder" -ForegroundColor Cyan
Write-Host "====================================" -ForegroundColor Cyan

# التحقق من وجود المجلد
if (-not (Test-Path $CertsPath)) {
    Write-Error "❌ المجلد غير موجود: $CertsPath"
    exit 1
}

Write-Host "📁 المسار: $CertsPath" -ForegroundColor Gray

# الملفات المطلوبة
$files = @(
    @{Name = "App Store Connect API Key"; File = "AuthKey_G2L6LRG5PK.p8"; Secret = "APP_STORE_CONNECT_API_KEY_BASE64"},
    @{Name = "Provisioning Profile"; File = "Muein_Orders_ios_app_store_1775392698.mobileprovision"; Secret = "IOS_PROVISIONING_PROFILE_BASE64"},
    @{Name = "Distribution Certificate"; File = "distribution.pem"; Secret = "IOS_CERTIFICATE_BASE64 (convert to p12 first)"},
    @{Name = "Private Key"; File = "private_key"; Secret = "Used with pem to create p12"}
)

Write-Host ""
Write-Host "📋 GitHub Secrets المطلوبة:" -ForegroundColor Yellow
Write-Host "==========================" -ForegroundColor Yellow

foreach ($item in $files) {
    $filePath = Join-Path $CertsPath $item.File

    if (Test-Path $filePath) {
        Write-Host "✅ $($item.Name): $($item.File)" -ForegroundColor Green

        # تحويل إلى Base64 (ما عدا private_key)
        if ($item.File -ne "private_key") {
            try {
                $base64 = [Convert]::ToBase64String([System.IO.File]::ReadAllBytes($filePath))
                Write-Host "   🔑 Secret: $($item.Secret)" -ForegroundColor Cyan
                Write-Host "   📋 Value (first 50 chars): $($base64.Substring(0, [Math]::Min(50, $base64.Length)))..." -ForegroundColor Gray
                Write-Host ""

                # حفظ في ملف للمرجع
                $outputFile = Join-Path $PSScriptRoot "$($item.File).base64.txt"
                $base64 | Out-File -FilePath $outputFile -Encoding UTF8
                Write-Host "   💾 تم حفظ Base64 في: $outputFile" -ForegroundColor DarkGray
            }
            catch {
                Write-Warning "⚠️ فشل في قراءة الملف: $($item.File)"
            }
        }
    }
    else {
        Write-Host "❌ $($item.Name): $($item.File) - غير موجود" -ForegroundColor Red
    }
    Write-Host ""
}

Write-Host ""
Write-Host "⚠️ ملاحظة هامة:" -ForegroundColor Yellow
Write-Host "===============" -ForegroundColor Yellow
Write-Host "يجب تحويل distribution.pem + private_key إلى ملف .p12 أولاً:" -ForegroundColor White
Write-Host "openssl pkcs12 -export -out certificate.p12 -inkey private_key -in distribution.pem" -ForegroundColor Gray
Write-Host ""
Write-Host "📖 اذهب إلى: Settings → Secrets and variables → Actions" -ForegroundColor Cyan
Write-Host "   وأضف القيم السابقة كـ Secrets" -ForegroundColor Cyan
Write-Host ""
Write-Host "✅ تم الانتهاء!" -ForegroundColor Green


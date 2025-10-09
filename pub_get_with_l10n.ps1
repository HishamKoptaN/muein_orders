#!/usr/bin/env powershell

Write-Host "🚀 Running flutter pub get with l10n management..." -ForegroundColor Green

Write-Host "📦 Running flutter pub get..." -ForegroundColor Yellow
flutter pub get

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Error in flutter pub get" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "🌍 Running l10n management script..." -ForegroundColor Yellow
dart run tool/manage_l10n.dart

if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠️ Warning: l10n script completed with issues" -ForegroundColor Yellow
} else {
    Write-Host "✅ Done! Dependencies installed and localizations updated." -ForegroundColor Green
}

Read-Host "Press Enter to continue"

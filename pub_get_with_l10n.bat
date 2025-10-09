@echo off
echo 🚀 Running flutter pub get with l10n management...

echo 📦 Running flutter pub get...
flutter pub get

if %errorlevel% neq 0 (
    echo ❌ Error in flutter pub get
    pause
    exit /b 1
)

echo 🌍 Running l10n management script...
dart run tool/manage_l10n.dart

if %errorlevel% neq 0 (
    echo ⚠️ Warning: l10n script completed with issues
) else (
    echo ✅ Done! Dependencies installed and localizations updated.
)

pause

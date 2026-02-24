@echo off
echo [1/3] Fetching dependencies...
call flutter pub get

echo [2/3] Building Release APK for armeabi-v7a...
call flutter build apk --release --flavor dev --dart-define=ENV=dev --target-platform android-arm --split-per-abi -t lib/main.dart

if %ERRORLEVEL% EQU 0 (
    echo [3/3] Build successful! Installing to device...
    adb install -r build/app/outputs/flutter-apk/app-armeabi-v7a-dev-release.apk
    echo Done! Application should be running now.
) else (
    echo.
    echo ! ERROR: Build failed. Please check your code.
)
pause
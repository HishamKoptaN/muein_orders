# تنظيف المشروع
Write-Host "🧹 Cleaning project..." -ForegroundColor Cyan
flutter clean

# الحصول على معلومات الجهاز
$deviceId = flutter devices | Select-String -Pattern "•" | ForEach-Object {
  ($_ -split "•")[1].Trim() -split " " | Select-Object -First 1
} | Select-Object -First 1

if (-not $deviceId) {
  Write-Host "❌ لا يوجد جهاز متصل. يرجى توصيل جهاز أو تشغيل محاكي." -ForegroundColor Red
  exit 1
}

Write-Host "📱 Using device: $deviceId" -ForegroundColor Green

# بناء تطبيق الاندرويد للتكامل
Write-Host "🔨 Building integration APK..." -ForegroundColor Cyan
flutter build apk --flavor integration -t lib/main_integration.dart --debug

if ($LASTEXITCODE -ne 0) {
  Write-Host "❌ فشل بناء التطبيق" -ForegroundColor Red
  exit 1
}

# تثبيت التطبيق على الجهاز
Write-Host "📲 Installing APK on device..." -ForegroundColor Cyan
$apkPath = "build/app/outputs/flutter-apk/app-integration-debug.apk"
adb -s $deviceId install -r $apkPath

if ($LASTEXITCODE -ne 0) {
  Write-Host "❌ فشل تثبيت التطبيق" -ForegroundColor Red
  exit 1
}

# تشغيل اختبارات التكامل
Write-Host "🚀 Running integration tests..." -ForegroundColor Cyan
flutter test integration_test -d $deviceId

if ($LASTEXITCODE -ne 0) {
  Write-Host "❌ فشلت اختبارات التكامل" -ForegroundColor Red
  exit 1
}

Write-Host "✅ تم تنفيذ اختبارات التكامل بنجاح!" -ForegroundColor Green

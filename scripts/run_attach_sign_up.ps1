# سكربت لتشغيل اختبار SignUp بالـ attach تلقائياً

# 1. جِب الـ device id الأول المتصل
$deviceId = flutter devices | Select-String -Pattern "•" | ForEach-Object {
  ($_ -split "•")[1].Trim() -split " " | Select-Object -First 1
} | Select-Object -First 1

if (-not $deviceId) {
  Write-Host "❌ مفيش جهاز متصل. وصل جهاز أو شغل Emulator."
  exit 1
}

Write-Host "✅ Using device: $deviceId"

# 2. شغّل التطبيق في الخلفية عشان نلقط الـ port
$runProcess = Start-Process -FilePath "flutter" -ArgumentList "run --debug -d $deviceId" -NoNewWindow -RedirectStandardOutput "run_log.txt" -PassThru

Start-Sleep -Seconds 10 # استنى شوية لحد ما يطلع الـ log

# 3. لقط الـ port من اللوج
$logContent = Get-Content "run_log.txt" -Raw
$regexPattern = 'http://127\.0\.0\.1:(\d+)/'
$obsMatch = [regex]::Match($logContent, $regexPattern)

if (-not $obsMatch.Success) {
  Write-Host "❌ معرفتش أجيب الـ Observatory port."
  if ($runProcess -ne $null) {
      Stop-Process -Id $runProcess.Id
  }
  exit 1
}

$port = $obsMatch.Groups[1].Value
Write-Host "✅ Found Observatory port: $port"

# 4. شغّل اختبار sign_up_test.dart باستخدام الـ attach
flutter drive --driver=test_driver/integration_test.dart --target=integration_test/sign_up_test.dart --use-existing-app=http://127.0.0.1:$port/ -d $deviceId

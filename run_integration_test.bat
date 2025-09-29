@echo off
REM ================================
REM Flutter Integration Test Runner
REM ================================

REM انتقل لمجلد المشروع
cd /d G:\flutter_projects\mubin_orders

REM عرض الأجهزة المتصلة
echo Checking connected devices...
flutter devices

REM تشغيل الاختبار على أي جهاز أندرويد متصل
flutter test integration_test\sign_up_test.dart -d android

echo.
echo ======= Test Finished =======
pause

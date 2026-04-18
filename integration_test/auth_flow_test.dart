import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:muein_orders/main.dart' as app;

/// 🧪 Integration Test مع التقاط جميع الـ Logs
/// هذا الاختبار يلتقط:
/// - الـ Logs من AppLogger
/// - الـ Errors
/// - Screenshots عند الفشل
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('🧪 Auth Flow Integration Tests', () {
    /// 🔍 قائمة لتخزين جميع الـ Logs
    final List<String> testLogs = [];

    /// 📝 دالة مساعدة لتسجيل الـ Logs
    void logTest(String message, {String level = 'INFO'}) {
      final logEntry = '[${DateTime.now().toIso8601String()}] [$level] $message';
      testLogs.add(logEntry);
      developer.log(logEntry, name: 'INTEGRATION_TEST');
      print('🧪 $logEntry'); // ✅ هذا يطبع دائماً!
    }

    /// 📸 دالة للتقاط screenshot
    Future<void> captureScreenshot(
        WidgetTester tester, String name, dynamic binding) async {
      try {
        await binding.takeScreenshot(name);
        logTest('📸 Screenshot captured: $name');
      } catch (e) {
        logTest('⚠️ Screenshot failed: $e', level: 'WARNING');
      }
    }

    /// 🧹 تنظيف الـ Logs قبل كل test
    setUp(() {
      testLogs.clear();
      logTest('🚀 Starting new test...');
    });

    /// 📊 طباعة جميع الـ Logs بعد كل test
    tearDown(() {
      logTest('📊 Test completed. Total logs: ${testLogs.length}');
      print('\n' + '=' * 50);
      print('📋 ALL LOGS FROM THIS TEST:');
      print('=' * 50);
      for (final log in testLogs) {
        print(log);
      }
      print('=' * 50 + '\n');
    });

    testWidgets('📝 Sign Up Flow with Full Logging',
        (WidgetTester tester) async {
      final binding = IntegrationTestWidgetsFlutterBinding.instance;

      logTest('🚀 Starting app...');

      // 🔥 تشغيل التطبيق مع التقاط الـ Logs
      await tester.runAsync(() async {
        app.main();
      });

      logTest('⏳ Waiting for app to initialize...');
      await tester.pumpAndSettle(const Duration(seconds: 3));

      await captureScreenshot(tester, '01_app_started', binding);

      // 🔍 البحث عن حقول الإدخال
      logTest('🔍 Looking for email field...');

      // محاولة العثور على TextField الأول (Email)
      final emailFields = find.byType(TextField);
      logTest('📊 Found ${tester.widgetList(emailFields).length} TextField(s)');

      if (tester.widgetList(emailFields).isEmpty) {
        logTest('❌ No TextFields found!', level: 'ERROR');
        await captureScreenshot(tester, '02_no_fields_found', binding);
        fail('No input fields found on screen');
      }

      await captureScreenshot(tester, '02_before_email_input', binding);

      // ✏️ إدخال الإيميل
      logTest('✏️ Entering email...');
      await tester.enterText(emailFields.first, 'test_integration@example.com');
      await tester.pumpAndSettle();
      logTest('✅ Email entered');

      await captureScreenshot(tester, '03_after_email', binding);

      // ✏️ إدخال كلمة المرور (إذا وجدنا حقل ثاني)
      if (tester.widgetList(emailFields).length > 1) {
        logTest('✏️ Entering password...');
        await tester.enterText(emailFields.at(1), 'TestPassword123!');
        await tester.pumpAndSettle();
        logTest('✅ Password entered');
      }

      await captureScreenshot(tester, '04_after_password', binding);

      // 🔘 البحث عن زر التسجيل
      logTest('🔍 Looking for sign up button...');
      final buttons = find.byType(ElevatedButton);
      logTest('📊 Found ${tester.widgetList(buttons).length} button(s)');

      if (tester.widgetList(buttons).isNotEmpty) {
        logTest('👆 Tapping sign up button...');
        await tester.tap(buttons.first);
        await tester.pumpAndSettle();
        logTest('✅ Button tapped');

        // ⏳ انتظار الاستجابة
        logTest('⏳ Waiting for response (5 seconds)...');
        await tester.pumpAndSettle(const Duration(seconds: 5));

        await captureScreenshot(tester, '05_after_signup_attempt', binding);

        // 🔍 التحقق من النتيجة
        logTest('🔍 Checking for success or error indicators...');

        // البحث عن Snackbar أو رسالة خطأ
        final snackbars = find.byType(SnackBar);
        final errorTexts = find.textContaining('خطأ');
        final successTexts = find.textContaining('نجاح');

        logTest('📊 Snackbars: ${tester.widgetList(snackbars).length}');
        logTest('📊 Error texts: ${tester.widgetList(errorTexts).length}');
        logTest('📊 Success texts: ${tester.widgetList(successTexts).length}');

        await captureScreenshot(tester, '06_final_state', binding);
      } else {
        logTest('⚠️ No buttons found!', level: 'WARNING');
      }

      logTest('✅ Test completed successfully');
    });

    testWidgets('🔐 Sign In Flow with Error Logging',
        (WidgetTester tester) async {
      final binding = IntegrationTestWidgetsFlutterBinding.instance;

      logTest('🚀 Starting Sign In test...');

      await tester.runAsync(() async {
        app.main();
      });

      await tester.pumpAndSettle(const Duration(seconds: 3));
      await captureScreenshot(tester, '01_signin_start', binding);

      // محاولة تسجيل الدخول ببيانات خاطئة لاختبار الـ Error handling
      logTest('🧪 Testing with invalid credentials...');

      final emailFields = find.byType(TextField);
      if (tester.widgetList(emailFields).isNotEmpty) {
        await tester.enterText(emailFields.first, 'invalid@email.com');
        await tester.pumpAndSettle();
        logTest('✏️ Entered invalid email');
      }

      await captureScreenshot(tester, '02_signin_invalid', binding);

      logTest('✅ Sign In test flow completed');
    });
  });
}

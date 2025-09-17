import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('اختبار تكامل لعملية إعادة تعيين كلمة المرور',
      (WidgetTester tester) async {
    // تشغيل التطبيق
    app.main();
    await tester.pumpAndSettle();

    // الانتقال إلى شاشة نسيت كلمة المرور
    await tester.tap(find.text('نسيت كلمة المرور؟'));
    await tester.pumpAndSettle();

    // إدخال البريد الإلكتروني
    const testEmail = 'test@example.com';
    await tester.enterText(
      find.byType(TextFormField),
      testEmail,
    );
    await tester.pumpAndSettle();

    // الضغط على زر إرسال رابط إعادة التعيين
    await tester.tap(find.text('إرسال رابط إعادة التعيين'));
    await tester.pumpAndSettle();

    // التحقق من ظهور رسالة النجاح
    expect(find.textContaining('تم إرسال رابط'), findsOneWidget);
  });

  testWidgets('اختبار تكامل لإدخال بريد إلكتروني غير صحيح',
      (WidgetTester tester) async {
    // تشغيل التطبيق
    app.main();
    await tester.pumpAndSettle();

    // الانتقال إلى شاشة نسيت كلمة المرور
    await tester.tap(find.text('نسيت كلمة المرور؟'));
    await tester.pumpAndSettle();

    // إدخال بريد إلكتروني غير صحيح
    const invalidEmail = 'invalid-email';
    await tester.enterText(
      find.byType(TextFormField),
      invalidEmail,
    );
    await tester.pumpAndSettle();

    // الضغط على زر إرسال رابط إعادة التعيين
    await tester.tap(find.text('إرسال رابط إعادة التعيين'));
    await tester.pumpAndSettle();

    // التحقق من ظهور رسالة الخطأ
    expect(find.textContaining('بريد إلكتروني غير صحيح'), findsOneWidget);
  });
}

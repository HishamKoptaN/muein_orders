import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubinorders/main.dart' as app;
// flutter drive --driver=test_driver/integration_test.dart --target=integration_test/sign_in_test.dart -d 192.168.0.172:43417

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('sign in flow works', (tester) async {
    // شغل التطبيق
    app.main();

    // استنى الأبلكيشن يجهز
    await tester.pumpAndSettle(const Duration(seconds: 5));

    // إدخال بيانات تسجيل الدخول
    await tester.enterText(
      find.byKey(const Key('email_field')),
      'test@example.com',
    );
    await tester.pump();

    await tester.enterText(
      find.byKey(const Key('password_field')),
      'P@ssw0rd123',
    );
    await tester.pump();

    // اضغط زر تسجيل الدخول
    final signInButton = find.byKey(const Key('signIn_button'));
    expect(signInButton, findsOneWidget, reason: 'Sign In button not found');
    await tester.tap(signInButton);
    await tester.pumpAndSettle();

    // تحقق من الانتقال للشاشة التالية (مثلاً الـ Home)
    expect(find.byKey(const Key('home_view_root')), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

// flutter test integration_test\sign_up_test.dart --flavor integration -d 192.168.0.172:33571
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('sign up flow works', (tester) async {
    // شغل التطبيق
    app.main();

    // انتظر تحميل التطبيق
    await tester.pumpAndSettle(const Duration(seconds: 10));
    await tester.pump();

    // إدخال البيانات في الحقول
    await tester.enterText(find.byKey(const Key('name_field')), 'Attach User');
    await tester.pump();

    await tester.enterText(
      find.byKey(const Key('email_field')),
      'attach@example.com',
    );
    await tester.enterText(find.byKey(const Key('phone_field')), '0100000000');
    await tester.enterText(
      find.byKey(const Key('password_field')),
      'P@ssw0rd123',
    );
    await tester.enterText(
      find.byKey(const Key('confirm_password_field')),
      'P@ssw0rd123',
    );

    // الضغط على زر التسجيل
    final signUpButton = find.byKey(const Key('signUp_button'));
    expect(signUpButton, findsOneWidget, reason: 'Sign Up button not found');
    await tester.tap(signUpButton);
    await tester.pumpAndSettle();

    // التأكد من الانتقال للشاشة التالية (onboarding)
    expect(find.byKey(const Key('onboarding_view_root')), findsOneWidget);
  });
}

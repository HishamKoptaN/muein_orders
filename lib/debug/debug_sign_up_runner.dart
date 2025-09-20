import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> runDebugSignUpTest(WidgetTester tester) async {
  await tester.enterText(
      find.byKey(const Key('signUp_name_field')), 'Debug User');
  await tester.enterText(
      find.byKey(const Key('signUp_email_field')), 'debug@example.com');
  await tester.enterText(
      find.byKey(const Key('signUp_phone_field')), '0100000000');
  await tester.enterText(
      find.byKey(const Key('signUp_password_field')), 'P@ssw0rd123');
  await tester.enterText(
      find.byKey(const Key('signUp_confirmPassword_field')), 'P@ssw0rd123');
  await tester.tap(find.byKey(const Key('signUp_submit_button')));
  await tester.pumpAndSettle();
}

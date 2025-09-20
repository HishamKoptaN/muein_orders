import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> runDebugSignUpTest(WidgetTester tester) async {
  await tester.enterText(
      find.byKey(const Key('name_field')), 'Test User');
  await tester.enterText(
      find.byKey(const Key('email_field')), 'test@example.com');
  await tester.enterText(
      find.byKey(const Key('phone_field')), '0100000000');
  await tester.enterText(
      find.byKey(const Key('password_field')), 'P@ssw0rd123');
  await tester.enterText(
      find.byKey(const Key('confirm_password_field')), 'P@ssw0rd123');
  await tester.tap(find.byKey(const Key('signUp_button')));
  await tester.pumpAndSettle();
}

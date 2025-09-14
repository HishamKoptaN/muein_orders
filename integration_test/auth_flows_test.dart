import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/app.dart';
import 'package:mubin_orders/core/di/dependency_injection.dart';
import 'package:mubin_orders/firebase_options.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  const testEmail =
      String.fromEnvironment('TEST_EMAIL', defaultValue: 'test@example.com');
  const testPassword =
      String.fromEnvironment('TEST_PASSWORD', defaultValue: 'Password123!');
  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await configureDependencies();
  });

  group('Auth Flows E2E', () {
    testWidgets('Sign In flow: fills email/password and taps login',
        (tester) async {
      runApp(const MubinOrdersApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Navigate to Sign In view explicitly via GoRouter
      final ctx = GlobalVariable.navState.currentContext!;
      GoRouter.of(ctx).go('/SignInView');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      // Interact with sign in fields using stable keys
      final emailField = find.byKey(const Key('email_field'));
      final passwordField = find.byKey(const Key('password_field'));
      final loginButton = find.byKey(const Key('login_button'));

      expect(emailField, findsOneWidget);
      expect(passwordField, findsOneWidget);
      expect(loginButton, findsOneWidget);

      await tester.enterText(emailField, testEmail);
      await tester.pump();
      await tester.enterText(passwordField, testPassword);
      await tester.pump();

      await tester.tap(loginButton);
      // Allow time for API call
      await tester.pumpAndSettle(const Duration(seconds: 5));

      // No hard assertion on backend result; success/failure handled by UI
    });

    testWidgets('Sign Up flow: fills fields and submits', (tester) async {
      runApp(const MubinOrdersApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // We start at Sign Up by default per router initialLocation
      final firstName = find.byKey(const Key('sign_up_first_name'));
      final lastName = find.byKey(const Key('sign_up_last_name'));
      final email = find.byKey(const Key('sign_up_email'));
      final phone = find.byKey(const Key('sign_up_phone'));
      final country = find.byKey(const Key('sign_up_country'));
      final password = find.byKey(const Key('sign_up_password'));
      final confirm = find.byKey(const Key('sign_up_confirm_password'));
      final submit = find.byKey(const Key('sign_up_submit'));

      expect(firstName, findsOneWidget);
      expect(lastName, findsOneWidget);
      expect(email, findsOneWidget);
      expect(phone, findsOneWidget);
      expect(country, findsOneWidget);
      expect(password, findsOneWidget);
      expect(confirm, findsOneWidget);
      expect(submit, findsOneWidget);

      // Fill fields
      await tester.enterText(firstName, 'John');
      await tester.pump();
      await tester.enterText(lastName, 'Doe');
      await tester.pump();

      final uniqueEmail = 'john.doe+${DateTime.now().millisecondsSinceEpoch}@example.com';
      await tester.enterText(email, uniqueEmail);
      await tester.pump();

      await tester.enterText(phone, '123456789');
      await tester.pump();

      // Country dropdown via suffix icon
      final dropDownIcon = find.byIcon(Icons.arrow_drop_down);
      expect(dropDownIcon, findsOneWidget);
      await tester.tap(dropDownIcon);
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ListTile).first);
      await tester.pumpAndSettle();

      await tester.enterText(password, 'Password123!');
      await tester.pump();
      await tester.enterText(confirm, 'Password123!');
      await tester.pump();

      await tester.tap(submit);
      await tester.pumpAndSettle(const Duration(seconds: 5));
    });

    testWidgets('Forgot Password: navigates and sends reset link via Firebase',
        (tester) async {
      runApp(const MubinOrdersApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Navigate to Sign In first
      final ctx = GlobalVariable.navState.currentContext!;
      GoRouter.of(ctx).go('/SignInView');
      await tester.pumpAndSettle();
      // Tap the forgot password button
      final forgotBtn = find.byKey(const Key('forgot_password_button'));
      expect(forgotBtn, findsOneWidget);
      await tester.tap(forgotBtn);
      await tester.pumpAndSettle();
      // In ForgotPasswordView, find TextFormField and the ElevatedButton
      final emailField = find.byType(TextFormField).first;
      final sendButton = find.byType(ElevatedButton).first;
      expect(emailField, findsOneWidget);
      expect(sendButton, findsOneWidget);
      await tester.enterText(emailField, testEmail);
      await tester.pump();
      await tester.tap(sendButton);
      await tester.pumpAndSettle(const Duration(seconds: 5));

      // Verify that the confirmation dialog is shown
      final dialog = find.byKey(const Key('reset_dialog'));
      expect(dialog, findsOneWidget);

      // Dismiss the dialog
      await tester.tap(find.byKey(const Key('reset_dialog_ok')));
      await tester.pumpAndSettle();
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/main.dart' as app;

import './test_helpers/test_auth_helper.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Sign In Integration Test', () {
    testWidgets(
        'should sign in with random test account from different countries',
        (WidgetTester tester) async {
      // Get a random test user
      final testUser = TestAuthHelper.getRandomTestUser();
      final email = testUser['email']!;
      final password = testUser['password']!;
      final countryCode = testUser['countryCode']!;

      print('Testing sign in with account from country: $countryCode');

      // Build our app and trigger a frame
      app.main();
      await tester.pumpAndSettle();

      // Verify we're on the sign in screen
      expect(find.text('تسجيل الدخول'), findsOneWidget);

      // Find form fields
      final emailField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).last;

      // Enter test credentials
      await tester.enterText(emailField, email);
      await tester.enterText(passwordField, password);
      await tester.pumpAndSettle();

      // Check if remember me is present and tap it
      final rememberMe = find.byType(Checkbox);
      if (rememberMe.evaluate().isNotEmpty) {
        await tester.tap(rememberMe);
        await tester.pumpAndSettle();
      }

      // Submit the form
      final signInButton = find.byType(ElevatedButton);
      await tester.ensureVisible(signInButton);
      await tester.pumpAndSettle();
      await tester.tap(signInButton);
      await tester.pumpAndSettle();

      // Wait for sign in to complete with a timeout
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Verify successful sign in by checking for home screen elements
      // Adjust these selectors based on your app's home screen
      final homeScreenIndicator = find.byType(BottomNavigationBar);
      if (homeScreenIndicator.evaluate().isNotEmpty) {
        print('✅ Successfully signed in with $email from $countryCode');
      } else {
        print('⚠️ May not have navigated to home screen after sign in');
      }

      // Additional verification - check if user is actually authenticated
      // This depends on your app's state management
      expect(homeScreenIndicator, findsOneWidget);
    });
  });
}

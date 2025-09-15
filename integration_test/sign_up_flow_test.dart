import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mubin_orders/app.dart';
import 'package:mubin_orders/core/di/dependency_injection.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Sign Up E2E', () {
    testWidgets('fills and submits the sign up form', (tester) async {
      // Initialize DI only (skip Firebase and splash to prevent timeouts)
      configureDependencies();

      // Launch a minimal app that hosts the router-configured app
      runApp(const MubinOrdersApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Expect we are on SignUp screen (initial route configured)
      // Find the form fields by type in the expected order
      final fields = find.byType(TextFormField);
      expect(fields, findsWidgets);

      // First Name
      await tester.enterText(fields.at(0), 'John');
      await tester.pump();

      // Last Name
      await tester.enterText(fields.at(1), 'Doe');
      await tester.pump();

      // Email
      await tester.enterText(fields.at(2), 'john.doe@example.com');
      await tester.pump();

      // Phone
      await tester.enterText(fields.at(3), '123456789');
      await tester.pump();

      // Country: tap dropdown icon to open picker, then select first item
      final dropDownIcon = find.byIcon(Icons.arrow_drop_down);
      expect(dropDownIcon, findsOneWidget);
      await tester.tap(dropDownIcon);
      await tester.pumpAndSettle();

      // Select the first country in the list
      final listTile = find.byType(ListTile).first;
      await tester.tap(listTile);
      await tester.pumpAndSettle();

      // Password
      await tester.enterText(fields.at(5), 'Password123!');
      await tester.pump();

      // Confirm Password
      await tester.enterText(fields.at(6), 'Password123!');
      await tester.pump();

      // Submit (ElevatedButton at the bottom)
      final submitButton = find.byType(ElevatedButton).last;
      expect(submitButton, findsOneWidget);
      await tester.tap(submitButton);
      await tester.pump(const Duration(milliseconds: 500));

      // Wait a bit for any network call/progress indicator
      await tester.pumpAndSettle(const Duration(seconds: 5));

      // The test is considered successful if no exceptions occur and UI remains responsive
    });
  });
}

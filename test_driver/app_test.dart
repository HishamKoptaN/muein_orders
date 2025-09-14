import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Mubin Orders App - Sign In Test', () {
    late FlutterDriver driver;

    // Connect to the Flutter driver before running any tests
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      await driver.close();
    });

    test('complete sign in flow', () async {
      // Wait for the sign-in screen to load
      await driver.waitFor(find.byValueKey('email_field'));
      
      // Enter email
      await driver.tap(find.byValueKey('email_field'));
      await driver.enterText('test@example.com');
      
      // Enter password
      await driver.tap(find.byValueKey('password_field'));
      await driver.enterText('password123');
      
      // Tap the login button
      await driver.tap(find.byValueKey('login_button'));
      
      // Wait for the app to process login (you might need to adjust this based on your app's behavior)
      await Future.delayed(const Duration(seconds: 2));
      
      // Verify successful navigation or any other post-login verification
      // For example, check if the home screen is displayed
      // await driver.waitFor(find.byType('MainView'));
    });
  });
}

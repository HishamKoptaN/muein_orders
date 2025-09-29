import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubinorders/app.dart';
import 'package:mubinorders/core/di/injection_container.dart' as di;
import 'package:mubinorders/core/error/api_error_model.dart';
import 'package:mubinorders/core/network/api_result.dart';
import 'package:mubinorders/features/auth/sign_up/data/models/sign_up_res_model.dart';
import 'package:mubinorders/features/auth/sign_up/data/models/signup_req_model.dart';
import 'package:mubinorders/features/auth/sign_up/domain/repo/sign_up_repo.dart';

class MockSignUpRepo extends Mock implements SignUpRepo {}

void main() {
  late MockSignUpRepo mockSignUpRepo;
  late GetIt getIt;

  setUpAll(() async {
    // Initialize the dependency injection
    await di.init();
    getIt = GetIt.instance;

    // Create mock repository
    mockSignUpRepo = MockSignUpRepo();

    // Register the mock repository
    if (getIt.isRegistered<SignUpRepo>()) {
      getIt.unregister<SignUpRepo>();
    }
    getIt.registerLazySingleton<SignUpRepo>(() => mockSignUpRepo);
  });

  tearDownAll(() {
    // Clean up
    getIt.unregister<SignUpRepo>();
  });

  testWidgets('Successful sign up flow', (tester) async {
    // Arrange
    const testToken = 'test_token';
    const testFcmToken = 'test_fcm_token';

    // Mock successful sign-up response
    when(
      () => mockSignUpRepo.signUp(
        request: any(named: 'request'),
      ),
    ).thenAnswer(
      (_) async => const ApiResult.success(
        SignUpResModel(token: testToken, role: 'user'),
      ),
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Wait for the app to finish building
    await tester.pumpAndSettle();

    // Navigate to sign-up screen
    final signUpButton = find.text('Sign Up');
    expect(signUpButton, findsOneWidget);
    await tester.tap(signUpButton);
    await tester.pumpAndSettle();

    // Fill in the form
    final nameField = find.byKey(const Key('name_field'));
    final emailField = find.byKey(const Key('email_field'));
    final phoneField = find.byKey(const Key('phone_field'));
    final passwordField = find.byKey(const Key('password_field'));
    final confirmPasswordField =
        find.byKey(const Key('confirm_password_field'));
    final submitButton = find.byKey(const Key('sign_up_button'));

    await tester.enterText(nameField, 'Test User');
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(phoneField, '+1234567890');
    await tester.enterText(passwordField, 'Password123!');
    await tester.enterText(confirmPasswordField, 'Password123!');

    // Submit the form
    await tester.tap(submitButton);
    await tester.pump();

    // Verify the repository was called with the correct data
    verify(
      () => mockSignUpRepo.signUp(
        request: any(
          named: 'request',
          that: isA<SignUpReqModel>()
              .having(
                (r) => r.name,
                'name',
                'Test User',
              )
              .having(
                (r) => r.email,
                'email',
                'test@example.com',
              )
              .having(
                (r) => r.phone,
                'phone',
                '+1234567890',
              ),
        ),
      ),
    ).called(1);

    // Verify the success state
    expect(find.text('Sign up successful!'), findsOneWidget);
  });

  testWidgets('Sign up with invalid data shows error', (tester) async {
    // Arrange
    const errorMessage = 'Invalid input data';

    // Mock error response
    when(
      () => mockSignUpRepo.signUp(
        request: any(named: 'request'),
      ),
    ).thenAnswer(
      (_) async => const ApiResult.failure(
        ApiErrorModel(error: errorMessage),
      ),
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    // Navigate to sign-up screen
    final signUpButton = find.text('Sign Up');
    await tester.tap(signUpButton);
    await tester.pumpAndSettle();

    // Submit empty form
    final submitButton = find.byKey(const Key('sign_up_button'));
    await tester.tap(submitButton);
    await tester.pump();

    // Verify error messages are shown
    expect(find.text('Please enter your name'), findsOneWidget);
    expect(find.text('Please enter your email'), findsOneWidget);
    expect(find.text('Please enter your phone number'), findsOneWidget);
    expect(find.text('Please enter a password'), findsOneWidget);

    // Fill in with invalid data
    await tester.enterText(
        find.byKey(const Key('email_field')), 'invalid-email');
    await tester.enterText(find.byKey(const Key('password_field')), 'short');
    await tester.enterText(
        find.byKey(const Key('confirm_password_field')), 'mismatch');

    await tester.tap(submitButton);
    await tester.pump();

    // Verify validation errors
    expect(find.text('Please enter a valid email'), findsOneWidget);
    expect(find.text('Password must be at least 8 characters'), findsOneWidget);
    expect(find.text('Passwords do not match'), findsOneWidget);

    // Fill in with valid data that will cause an API error
    await tester.enterText(find.byKey(const Key('name_field')), 'Test User');
    await tester.enterText(
        find.byKey(const Key('email_field')), 'test@example.com');
    await tester.enterText(find.byKey(const Key('phone_field')), '+1234567890');
    await tester.enterText(
        find.byKey(const Key('password_field')), 'ValidPass123!');
    await tester.enterText(
        find.byKey(const Key('confirm_password_field')), 'ValidPass123!');

    await tester.tap(submitButton);
    await tester.pumpAndSettle();

    // Verify the error message from the API is shown
    expect(find.text(errorMessage), findsOneWidget);
  });
}

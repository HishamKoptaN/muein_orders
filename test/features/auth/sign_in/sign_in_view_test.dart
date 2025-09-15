import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';
// Import sign-in related files
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_event.dart';
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_state.dart';
import 'package:mubin_orders/features/auth/sign_in/present/views/sign_in_view.dart';
// Import your app's localization
import 'package:mubin_orders/l10n/app_localizations.dart';

// Mocks
class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

void main() {
  late MockSignInBloc mockSignInBloc;

  // Sample test data
  const testEmail = 'test@example.com';
  const testPassword = 'Test@123';
  const testInvalidEmail = 'invalid-email';
  const testShortPassword = 'short';

  setUpAll(() {
    // Register fallback values for mocktail
    registerFallbackValue(FakeSignInEvent());
    registerFallbackValue(FakeSignInState());
  });

  setUp(() {
    mockSignInBloc = MockSignInBloc();
    when(() => mockSignInBloc.state).thenReturn(const SignInState.initial());
    when(() => mockSignInBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  // Helper function to create widget under test
  Widget createWidgetUnderTest() {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider<SignInBloc>(
          create: (context) => mockSignInBloc,
          child: const SignInView(),
        ),
      ),
    );
  }

  group('SignInView', () {
    testWidgets('renders all form fields and buttons', (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.byType(ElevatedButton), findsNWidgets(2));
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Sign In'), findsOneWidget);
      expect(find.text('Forgot Password?'), findsOneWidget);
    });

    testWidgets('shows loading indicator when state is loading',
        (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
          status: FormzSubmissionStatus.inProgress,
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('shows error message when sign in fails', (tester) async {
      // Arrange
      const errorMessage = 'Invalid credentials';
      when(() => mockSignInBloc.state).thenReturn(
        SignInState.loaded(
          email: EmailInput.dirty(testEmail),
          password: PasswordInput.dirty(testPassword),
          isPasswordVisible: false,
          isValid: false,
          status: FormzSubmissionStatus.failure,
          errorMessage: errorMessage,
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.text(errorMessage), findsOneWidget);
    });

    testWidgets('toggles password visibility when eye icon is pressed',
        (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Act
      await tester.tap(find.byIcon(Icons.visibility_off));
      await tester.pump();

      // Assert
      verify(() =>
              mockSignInBloc.add(const SignInEvent.togglePasswordVisibility()))
          .called(1);
    });

    testWidgets('validates email and password inputs', (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        SignInState.loaded(
          email: EmailInput.dirty(testInvalidEmail),
          password: PasswordInput.dirty(testShortPassword),
          isPasswordVisible: false,
          isValid: false,
        ),
      );

      // Act
      await tester.pumpWidget(createWidgetUnderTest());

      // Assert
      expect(find.text('Invalid email'), findsOneWidget);
      expect(find.text('Password is too short'), findsOneWidget);
    });

    testWidgets('calls signInWithGooglePressed when Google button is tapped',
        (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Act
      await tester.tap(find.byIcon(Icons.g_mobiledata));
      await tester.pump();

      // Assert
      verify(() =>
              mockSignInBloc.add(const SignInEvent.signInWithGooglePressed()))
          .called(1);
    });

    testWidgets('calls signInWithApplePressed when Apple button is tapped',
        (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Act
      await tester.tap(find.byIcon(Icons.apple));
      await tester.pump();

      // Assert
      verify(() =>
              mockSignInBloc.add(const SignInEvent.signInWithApplePressed()))
          .called(1);
    });

    testWidgets(
        'calls signInWithCredentialsPressed when sign in button is tapped',
        (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        SignInState.loaded(
          email: EmailInput.dirty(testEmail),
          password: PasswordInput.dirty(testPassword),
          isPasswordVisible: false,
          isValid: false,
        ),
      );

      await tester.pumpWidget(createWidgetUnderTest());

      // Enter email and password
      await tester.enterText(find.byType(TextFormField).first, testEmail);
      await tester.enterText(find.byType(TextFormField).last, testPassword);

      // Act
      await tester.tap(find.text('Sign In'));
      await tester.pump();

      // Assert
      verify(() => mockSignInBloc
          .add(const SignInEvent.signInWithCredentialsPressed())).called(1);
    });

    testWidgets('navigates to forgot password when link is tapped',
        (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
      );

      // Mock navigation
      final mockObserver = MockNavigatorObserver();

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider<SignInBloc>(
              create: (context) => mockSignInBloc,
              child: const SignInView(),
            ),
          ),
          navigatorObservers: [mockObserver],
        ),
      );

      // Act
      await tester.tap(find.text('Forgot Password?'));
      await tester.pumpAndSettle();

      // Assert - Verify navigation occurred
      // Note: You'll need to implement the actual navigation test based on your app's routing
    });
  });
}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

// Fake classes for mocktail
class FakeSignInEvent extends Fake implements SignInEvent {}

class FakeSignInState extends Fake implements SignInState {}

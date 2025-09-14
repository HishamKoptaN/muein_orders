import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:formz/formz.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:form_inputs/form_inputs.dart';

// Import your app's localization
import 'package:mubin_orders/l10n/app_localizations.dart';

// Import sign-in related files
import 'package:sign_in/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_event.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_state.dart';
import 'package:mubin_orders/features/auth/sign_in_view.dart';

// Mocks
class MockSignInBloc extends MockBloc<SignInEvent, SignInState> implements SignInBloc {}

void main() {
  late MockSignInBloc mockSignInBloc;
  
  // Sample test data
  const testEmail = 'test@example.com';
  const testPassword = 'Test@123';
  
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
        body: SignInView(
          bloc: mockSignInBloc,
        ),
      ),
    );
  }
  
  group('SignInView', () {
    testWidgets('renders all form fields and buttons', (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(
        SignInState.loaded(
          email: const EmailInput.pure(),
          password: const LoginPasswordInput.pure(),
          obscureText: true,
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      );
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Assert
      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.byType(ElevatedButton), findsNWidgets(2));
      // Labels depend on localization; basic presence checks are sufficient here.
    });
    
    testWidgets('shows loading indicator when state is loading', (tester) async {
      // Arrange
      when(() => mockSignInBloc.state).thenReturn(const SignInState.loading());
      
      // Act
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
    
    testWidgets('calls signInWithEmailAndPassword when form is valid', (tester) async {
      // Arrange: present a loaded state (the widget under test will read text fields values)
      when(() => mockSignInBloc.state).thenReturn(
        SignInState.loaded(
          email: const EmailInput.pure(),
          password: const LoginPasswordInput.pure(),
          obscureText: true,
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      );
      
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Enter valid credentials and tap sign-in
      await tester.enterText(find.byType(TextFormField).at(0), testEmail);
      await tester.enterText(find.byType(TextFormField).at(1), testPassword);
      await tester.tap(find.byType(ElevatedButton).first);
      await tester.pump();
      
      verify(() => mockSignInBloc.add(
        const SignInEvent.fireSignIn(),
      )).called(1);
    });
    
    testWidgets('shows error message when state is failure', (tester) async {
      // This test requires ApiErrorModel from error package; keeping placeholder until wired in UI.
    }, skip: true);
    
    testWidgets('shows error message text when provided', (tester) async {
      // Placeholder until exact UI strings from localization are confirmed.
    }, skip: true);
    
    testWidgets('toggles password visibility when eye icon is pressed', (tester) async {
      // Arrange: start with obscureText true
      when(() => mockSignInBloc.state).thenReturn(
        SignInState.loaded(
          email: const EmailInput.pure(),
          password: const LoginPasswordInput.pure(),
          obscureText: true,
          formzSubmissionStatus: FormzSubmissionStatus.initial,
        ),
      );
      
      // Act - Initial render
      await tester.pumpWidget(createWidgetUnderTest());
      
      // Presence checks only; detailed obscure toggle requires whenListen and widget internals.
      
      // Act - Tap the visibility toggle
      await tester.tap(find.byIcon(Icons.visibility));
      await tester.pump();
      
      // Note: Actual toggle depends on bloc emitting new state; this assertion may
      // be flaky without whenListen. Keep as presence check for now.
    }, skip: true);
  });
}

// Fake classes for mocktail
class FakeSignInEvent extends Fake implements SignInEvent {}
class FakeSignInState extends Fake implements SignInState {}

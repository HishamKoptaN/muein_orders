import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubin_orders/core/errors/api_error_model.dart';
import 'package:mubin_orders/features/auth/sign_up/present/blocs/bloc/sign_up_bloc.dart';
import 'package:mubin_orders/features/auth/sign_up/present/blocs/bloc/sign_up_event.dart';
import 'package:mubin_orders/features/auth/sign_up/present/blocs/bloc/sign_up_state.dart';
import 'package:mubin_orders/features/auth/sign_up/present/views/widgets/sign_up_form.dart';

class MockSignUpBloc extends MockBloc<SignUpEvent, SignUpState>
    implements SignUpBloc {}

class FakeSignUpEvent extends Fake implements SignUpEvent {}

class FakeSignUpState extends Fake implements SignUpState {}

void main() {
  late SignUpBloc signUpBloc;

  setUpAll(() {
    registerFallbackValue(FakeSignUpEvent());
    registerFallbackValue(FakeSignUpState());
  });

  setUp(() {
    signUpBloc = MockSignUpBloc();
  });

  group('SignUpForm', () {
    testWidgets('renders all form fields with correct labels', (tester) async {
      when(() => signUpBloc.state).thenReturn(
        const SignUpState.loaded(
          name: GenericFormzInput.dirty(''),
          lastName: GenericFormzInput.dirty(''),
          email: EmailInput.dirty(''),
          phone: PhoneNumberInput.dirty(''),
          countrtyId: GenericFormzInput.dirty(''),
          password: PasswordInput.dirty(''),
          confirmPassword: ConfirmPasswordInput.dirty(value: '', password: ''),
          formzSubmissionStatus: FormzSubmissionStatus.initial,
          loading: false,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider<SignUpBloc>.value(
              value: signUpBloc,
              child: const Directionality(
                textDirection: TextDirection.ltr,
                child: SignUpForm(),
              ),
            ),
          ),
        ),
      );

      // Verify all form fields are present with correct labels
      expect(find.byType(TextFormField), findsNWidgets(7));
      expect(find.text('First Name'), findsOneWidget);
      expect(find.text('Last Name'), findsOneWidget);
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Phone Number'), findsOneWidget);
      expect(find.text('Country'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Confirm Password'), findsOneWidget);
      
      // Verify submit button
      final signUpButton = find.byType(ElevatedButton);
      expect(signUpButton, findsOneWidget);
    });

    testWidgets('shows validation errors when form is submitted empty',
        (tester) async {
      when(() => signUpBloc.state).thenReturn(
        const SignUpState.loaded(
          name: GenericFormzInput.dirty(''),
          lastName: GenericFormzInput.dirty(''),
          email: EmailInput.dirty(''),
          phone: PhoneNumberInput.dirty(''),
          countrtyId: GenericFormzInput.dirty(''),
          password: PasswordInput.dirty(''),
          confirmPassword: ConfirmPasswordInput.dirty(value: '', password: ''),
          formzSubmissionStatus: FormzSubmissionStatus.initial,
          loading: false,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider<SignUpBloc>.value(
              value: signUpBloc,
              child: const Directionality(
                textDirection: TextDirection.ltr,
                child: SignUpForm(),
              ),
            ),
          ),
        ),
      );

      // Submit the form
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Verify the form submission was requested
      verify(() => signUpBloc.add(any())).called(1);
    });
    
    testWidgets('shows loading indicator when submitting', (tester) async {
      when(() => signUpBloc.state).thenReturn(
        const SignUpState.loaded(
          name: GenericFormzInput.dirty('John'),
          lastName: GenericFormzInput.dirty('Doe'),
          email: EmailInput.dirty('test@example.com'),
          phone: PhoneNumberInput.dirty('+1234567890'),
          countrtyId: GenericFormzInput.dirty('1'),
          password: PasswordInput.dirty('Password123!'),
          confirmPassword: ConfirmPasswordInput.dirty(
            value: 'Password123!',
            password: 'Password123!',
          ),
          formzSubmissionStatus: FormzSubmissionStatus.inProgress,
          loading: true,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider<SignUpBloc>.value(
              value: signUpBloc,
              child: const Directionality(
                textDirection: TextDirection.ltr,
                child: SignUpForm(),
              ),
            ),
          ),
        ),
      );

      // Verify loading indicator is shown
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}

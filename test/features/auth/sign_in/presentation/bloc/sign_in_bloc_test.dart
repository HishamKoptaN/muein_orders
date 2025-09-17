import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mubin_orders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_bloc.dart';

// Import the generated mocks file
import 'sign_in_bloc_test.mocks.dart' as mock;

// Run the build_runner to generate mocks
@GenerateMocks([SignInUseCases])
void main() {
  late SignInBloc signInBloc;
  late mock.MockSignInUseCases mockSignInUseCases;

  setUp(() {
    mockSignInUseCases = mock.MockSignInUseCases();
    signInBloc = SignInBloc(signInUseCases: mockSignInUseCases);
  });

  group('SignInBloc', () {
    test('initial state is correct', () {
      expect(
        signInBloc.state,
        isA<SignInState>().having(
          (s) => s.whenOrNull(
            loaded: (email, password, isValid, isPasswordVisible, rememberMe,
                    status, errorMessage) =>
                email,
          ),
          'email',
          const EmailInput.pure(),
        ),
      );
    });

    blocTest<SignInBloc, SignInState>(
      'emits state with updated email when EmailChanged is added',
      build: () => SignInBloc(signInUseCases: mockSignInUseCases),
      act: (bloc) =>
          bloc.add(const SignInEvent.emailChanged('test@example.com')),
      expect: () => [
        isA<SignInState>().having(
          (s) => s.whenOrNull(
            loaded: (email, password, isValid, isPasswordVisible, rememberMe,
                    status, errorMessage) =>
                email,
          ),
          'email',
          const EmailInput.dirty('test@example.com'),
        ),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'emits state with updated password when PasswordChanged is added',
      build: () => SignInBloc(signInUseCases: mockSignInUseCases),
      act: (bloc) => bloc.add(const SignInEvent.passwordChanged('password123')),
      expect: () => [
        isA<SignInState>().having(
          (s) => s.whenOrNull(
            loaded: (email, password, isValid, isPasswordVisible, rememberMe,
                    status, errorMessage) =>
                password,
          ),
          'password',
          const PasswordInput.dirty('password123'),
        ),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'emits state with updated rememberMe when RememberMeChanged is added',
      build: () => SignInBloc(signInUseCases: mockSignInUseCases),
      act: (bloc) => bloc.add(const SignInEvent.rememberMeChanged(true)),
      expect: () => [
        isA<SignInState>().having(
          (s) =>
              s.whenOrNull(
                loaded: (email, password, isValid, isPasswordVisible,
                        rememberMe, status, errorMessage) =>
                    rememberMe,
              ) ??
              false,
          'rememberMe',
          true,
        ),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'toggles password visibility when TogglePasswordVisibility is added',
      build: () => SignInBloc(signInUseCases: mockSignInUseCases),
      act: (bloc) => bloc.add(const SignInEvent.togglePasswordVisibility()),
      expect: () => [
        isA<SignInState>().having(
          (s) =>
              s.whenOrNull(
                loaded: (email, password, isValid, isPasswordVisible,
                        rememberMe, status, errorMessage) =>
                    isPasswordVisible,
              ) ??
              false,
          'isPasswordVisible',
          true,
        ),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'emits loading state when sign in is attempted',
      build: () {
        when(mockSignInUseCases.signInWithEmailAndPassword(
          email: 'test@example.com',
          password: 'password123',
          rememberMe: false,
        )).thenAnswer((_) async =>
            throw UnimplementedError('Mock implementation needed'));

        return SignInBloc(signInUseCases: mockSignInUseCases);
      },
      act: (bloc) {
        bloc.add(const SignInEvent.emailChanged('test@example.com'));
        bloc.add(const SignInEvent.passwordChanged('password123'));
        bloc.add(const SignInEvent.signInWithCredentialsPressed());
      },
      expect: () => [
        // State after email changed
        isA<SignInState>().having(
          (s) => s.whenOrNull(
            loaded: (email, password, isValid, isPasswordVisible, rememberMe,
                    status, errorMessage) =>
                email,
          ),
          'email',
          const EmailInput.dirty('test@example.com'),
        ),
        // State after password changed
        isA<SignInState>().having(
          (s) => s.whenOrNull(
            loaded: (email, password, isValid, isPasswordVisible, rememberMe,
                    status, errorMessage) =>
                password,
          ),
          'password',
          const PasswordInput.dirty('password123'),
        ),
        // State after sign in pressed (loading)
        isA<SignInState>().having(
          (s) => s.whenOrNull(
            loaded: (email, password, isValid, isPasswordVisible, rememberMe,
                    status, errorMessage) =>
                status,
          ),
          'status',
          FormzSubmissionStatus.inProgress,
        ),
      ],
    );
  });
}

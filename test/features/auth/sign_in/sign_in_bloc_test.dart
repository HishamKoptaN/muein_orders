import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubin_orders/core/error/failures.dart';
import 'package:mubin_orders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_event.dart';
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_state.dart';

class MockSignInUseCases extends Mock implements SignInUseCases {}

void main() {
  late SignInBloc signInBloc;
  late MockSignInUseCases mockSignInUseCases;

  const testEmail = 'test@example.com';
  const testPassword = 'Test@123';
  // Test data
  final testUser = MockUser();
  final testCredential = MockUserCredential();

  setUp(() {
    mockSignInUseCases = MockSignInUseCases();
    signInBloc = SignInBloc(signInUseCases: mockSignInUseCases);
  });

  tearDown(() {
    signInBloc.close();
  });

  group('SignInBloc', () {
    test('initial state is SignInState.initial()', () {
      expect(
        signInBloc.state,
        const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
      );
    });

    group('EmailChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loaded] with updated email and validation status',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.emailChanged(testEmail)),
        expect: () => [
          SignInState.loaded(
            email: EmailInput.dirty(testEmail),
            password: const PasswordInput.pure(),
            isValid: false,
            isPasswordVisible: false,
          ),
        ],
      );
    });

    group('PasswordChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loaded] with updated password and validation status',
        build: () => signInBloc,
        act: (bloc) =>
            bloc.add(const SignInEvent.passwordChanged(testPassword)),
        expect: () => [
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: PasswordInput.dirty(testPassword),
            isValid: false,
            isPasswordVisible: false,
          ),
        ],
      );
    });

    group('togglePasswordVisibility', () {
      blocTest<SignInBloc, SignInState>(
        'toggles password visibility',
        build: () => signInBloc,
        seed: () => const SignInState.loaded(
          email: EmailInput.pure(),
          password: PasswordInput.pure(),
          isPasswordVisible: false,
        ),
        act: (bloc) => bloc.add(const SignInEvent.togglePasswordVisibility()),
        expect: () => [
          const SignInState.loaded(
            email: EmailInput.pure(),
            password: PasswordInput.pure(),
            isPasswordVisible: true,
          ),
        ],
      );
    });

    group('signInWithCredentialsPressed', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loading, success] when sign in is successful',
        build: () {
          when(() => mockSignInUseCases.signInWithEmailAndPassword(
                email: testEmail,
                password: testPassword,
              )).thenAnswer((_) async => Right(testCredential));
          return signInBloc;
        },
        seed: () => SignInState.loaded(
          email: EmailInput.dirty(testEmail),
          password: PasswordInput.dirty(testPassword),
          isPasswordVisible: false,
        ),
        act: (bloc) =>
            bloc.add(const SignInEvent.signInWithCredentialsPressed()),
        expect: () => [
          SignInState.loaded(
            email: EmailInput.dirty(testEmail),
            password: PasswordInput.dirty(testPassword),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.inProgress,
          ),
          SignInState.loaded(
            email: EmailInput.dirty(testEmail),
            password: PasswordInput.dirty(testPassword),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.success,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when sign in fails',
        build: () {
          when(() => mockSignInUseCases.signInWithEmailAndPassword(
                email: testEmail,
                password: testPassword,
              )).thenThrow(FirebaseAuthException(code: 'user-not-found'));
          return signInBloc;
        },
        seed: () => SignInState.loaded(
          email: EmailInput.dirty(testEmail),
          password: PasswordInput.dirty(testPassword),
          isPasswordVisible: false,
        ),
        act: (bloc) =>
            bloc.add(const SignInEvent.signInWithCredentialsPressed()),
        expect: () => [
          SignInState.loaded(
            email: EmailInput.dirty(testEmail),
            password: PasswordInput.dirty(testPassword),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.inProgress,
          ),
          SignInState.loaded(
            email: EmailInput.dirty(testEmail),
            password: PasswordInput.dirty(testPassword),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.failure,
            errorMessage: 'No user found with this email',
          ),
        ],
      );
    });

    group('signInWithGooglePressed', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loading, success] when Google sign in is successful',
        build: () {
          when(() => mockSignInUseCases.signInWithGoogle())
              .thenAnswer((_) async => Right(testCredential));
          return signInBloc;
        },
        act: (bloc) => bloc.add(const SignInEvent.signInWithGooglePressed()),
        expect: () => [
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.inProgress,
          ),
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.success,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when Google sign in fails',
        build: () {
          when(() => mockSignInUseCases.signInWithGoogle()).thenThrow(
              FirebaseAuthException(
                  code: 'account-exists-with-different-credential'));
          return signInBloc;
        },
        act: (bloc) => bloc.add(const SignInEvent.signInWithGooglePressed()),
        expect: () => [
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.inProgress,
          ),
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.failure,
            errorMessage:
                'An account already exists with the same email address but different sign-in credentials',
          ),
        ],
      );
    });

    group('signInWithApplePressed', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loading, success] when Apple sign in is successful',
        build: () {
          when(() => mockSignInUseCases.signInWithApple())
              .thenAnswer((_) async => Right(testCredential));
          return signInBloc;
        },
        act: (bloc) => bloc.add(const SignInEvent.signInWithApplePressed()),
        expect: () => [
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.inProgress,
          ),
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.success,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when Apple sign in fails',
        build: () {
          when(() => mockSignInUseCases.signInWithApple())
              .thenThrow(FirebaseAuthException(code: 'invalid-credential'));
          return signInBloc;
        },
        act: (bloc) => bloc.add(const SignInEvent.signInWithApplePressed()),
        expect: () => [
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.inProgress,
          ),
          SignInState.loaded(
            email: const EmailInput.pure(),
            password: const PasswordInput.pure(),
            isPasswordVisible: false,
            status: FormzSubmissionStatus.failure,
            errorMessage:
                'The supplied auth credential is malformed or has expired',
          ),
        ],
      );
    });
  });
}

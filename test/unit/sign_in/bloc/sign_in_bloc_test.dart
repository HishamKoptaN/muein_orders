import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mock.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubinorders/core/error/api_error_model.dart';
import 'package:mubinorders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';
import 'package:mubinorders/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';

import 'sign_in_bloc_test.mocks.dart';

class MockUserCredential extends Mock implements UserCredential {}

@GenerateMocks([SignInUseCases])
void main() {
  late SignInBloc signInBloc;
  late MockSignInUseCases mockSignInUseCases;
  late UserCredential mockUserCredential;

  setUp(() {
    mockSignInUseCases = MockSignInUseCases();
    signInBloc = SignInBloc(signInUseCases: mockSignInUseCases);
    mockUserCredential = MockUserCredential();
  });

  tearDown(() {
    signInBloc.close();
  });

  group('SignInBloc', () {
    const tEmail = 'test@example.com';
    const tPassword = 'password123';
    const tRememberMe = true;

    test('initial state is correct', () {
      expect(
        signInBloc.state,
        const SignInState(),
      );
    });

    group('EmailChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with updated email',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.emailChanged(tEmail)),
        expect: () => [
          const SignInState(email: tEmail),
        ],
      );
    });

    group('PasswordChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with updated password',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.passwordChanged(tPassword)),
        expect: () => [
          const SignInState(password: tPassword),
        ],
      );
    });

    group('RememberMeChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with updated rememberMe',
        build: () => signInBloc,
        act: (bloc) =>
            bloc.add(const SignInEvent.rememberMeChanged(tRememberMe)),
        expect: () => [
          const SignInState(rememberMe: tRememberMe),
        ],
      );
    });

    group('TogglePasswordVisibility', () {
      blocTest<SignInBloc, SignInState>(
        'toggles password visibility',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.togglePasswordVisibility()),
        expect: () => [
          const SignInState(obscurePassword: true),
        ],
      );
    });

    group('SignInWithCredentialsPressed', () {
      blocTest<SignInBloc, SignInState>(
        'emits [loading, success] when sign in is successful',
        build: () {
          when(
            () => mockSignInUseCases.signInWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
              rememberMe: tRememberMe,
            ),
          ).thenAnswer((_) async => Right(mockUserCredential));
          return signInBloc;
        },
        act: (bloc) => bloc
          ..add(const SignInEvent.emailChanged(tEmail))
          ..add(const SignInEvent.passwordChanged(tPassword))
          ..add(const SignInEvent.rememberMeChanged(tRememberMe))
          ..add(const SignInEvent.signInWithCredentialsPressed()),
        expect: () => [
          const SignInState(email: tEmail),
          SignInState(
            email: tEmail,
            password: tPassword,
          ),
          SignInState(
            email: tEmail,
            password: tPassword,
            rememberMe: tRememberMe,
          ),
          SignInState(
            email: tEmail,
            password: tPassword,
            rememberMe: tRememberMe,
            status: SignInStatus.loading,
          ),
          SignInState(
            email: tEmail,
            password: tPassword,
            rememberMe: tRememberMe,
            status: SignInStatus.success,
          ),
        ],
      );

      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when sign in fails',
        build: () {
          when(
            () => mockSignInUseCases.signInWithEmailAndPassword(
              email: tEmail,
              password: tPassword,
              rememberMe: tRememberMe,
            ),
          ).thenAnswer(
            (_) async =>
                const Left(ApiErrorModel(message: 'Invalid credentials')),
          );
          return signInBloc;
        },
        act: (bloc) => bloc
          ..add(const SignInEvent.emailChanged(tEmail))
          ..add(const SignInEvent.passwordChanged(tPassword))
          ..add(const SignInEvent.rememberMeChanged(tRememberMe))
          ..add(const SignInEvent.signInWithCredentialsPressed()),
        expect: () => [
          const SignInState(email: tEmail),
          SignInState(
            email: tEmail,
            password: tPassword,
          ),
          SignInState(
            email: tEmail,
            password: tPassword,
            rememberMe: tRememberMe,
          ),
          SignInState(
            email: tEmail,
            password: tPassword,
            rememberMe: tRememberMe,
            status: SignInStatus.loading,
          ),
          SignInState(
            email: tEmail,
            password: tPassword,
            rememberMe: tRememberMe,
            status: SignInStatus.failure,
            errorMessage: 'Invalid credentials',
          ),
        ],
      );
    });
  });
}

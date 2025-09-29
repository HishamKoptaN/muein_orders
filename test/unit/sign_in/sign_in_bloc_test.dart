import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubinorders/core/error/api_error_model.dart';
import 'package:mubinorders/features/auth/sign_in/domain/repo/sign_in_repo.dart';
import 'package:mubinorders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';
import 'package:mubinorders/features/auth/sign_in/present/bloc/sign_in_bloc.dart';

class MockUserCredential extends Mock implements UserCredential {}

class MockSignInRepository extends Mock implements SignInRepository {}

void main() {
  late SignInBloc signInBloc;
  late MockSignInRepository mockRepository;
  late SignInUseCases signInUseCases;

  setUp(() {
    mockRepository = MockSignInRepository();
    signInUseCases = SignInUseCases(mockRepository);
    signInBloc = SignInBloc(signInUseCases: signInUseCases);
  });

  tearDown(() {
    signInBloc.close();
  });

  group('SignInBloc', () {
    test('initial state is correct', () {
      expect(signInBloc.state, const SignInState());
    });

    group('EmailChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with updated email',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.emailChanged('test@example.com')),
        expect: () => [
          const SignInState(email: 'test@example.com'),
        ],
      );
    });

    group('PasswordChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with updated password',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.passwordChanged('password123')),
        expect: () => [
          const SignInState(password: 'password123'),
        ],
      );
    });

    group('RememberMeChanged', () {
      blocTest<SignInBloc, SignInState>(
        'emits state with updated rememberMe',
        build: () => signInBloc,
        act: (bloc) => bloc.add(const SignInEvent.rememberMeChanged(true)),
        expect: () => [
          const SignInState(rememberMe: true),
        ],
      );
    });

    group('TogglePasswordVisibility', () {
      blocTest<SignInBloc, SignInState>(
        'toggles password visibility',
        build: () => signInBloc,
        seed: () => const SignInState(obscurePassword: false),
        act: (bloc) => bloc.add(const SignInEvent.togglePasswordVisibility()),
        expect: () => [
          const SignInState(obscurePassword: true),
        ],
      );
    });

    group('SignInWithCredentialsPressed', () {
      const email = 'test@example.com';
      const password = 'password123';
      final mockUserCredential = MockUserCredential();

      blocTest<SignInBloc, SignInState>(
        'emits [loading, success] when sign in is successful',
        build: () {
          when(() => mockRepository.signInWithEmailAndPassword(
                email: email,
                password: password,
                rememberMe: false,
              ),).thenAnswer((_) async => Right(mockUserCredential));
          return signInBloc;
        },
        seed: () => const SignInState(
          email: email,
          password: password,
        ),
        act: (bloc) => bloc.add(const SignInEvent.signInWithCredentialsPressed()),
        expect: () => [
          const SignInState(
            email: email,
            password: password,
            status: SignInStatus.loading,
          ),
          const SignInState(
            email: email,
            password: password,
            status: SignInStatus.success,
          ),
        ],
        verify: (_) {
          verify(() => mockRepository.signInWithEmailAndPassword(
                email: email,
                password: password,
                rememberMe: false,
              ),).called(1);
        },
      );

      blocTest<SignInBloc, SignInState>(
        'emits [loading, failure] when sign in fails',
        build: () {
          when(() => mockRepository.signInWithEmailAndPassword(
                email: email,
                password: password,
                rememberMe: true,
              ),).thenAnswer((_) async => const Left(ApiErrorModel(message: 'Invalid credentials')));
          return signInBloc;
        },
        seed: () => const SignInState(
          email: email,
          password: password,
          rememberMe: true,
        ),
        act: (bloc) => bloc.add(const SignInEvent.signInWithCredentialsPressed()),
        expect: () => [
          const SignInState(
            email: email,
            password: password,
            rememberMe: true,
            status: SignInStatus.loading,
          ),
          const SignInState(
            email: email,
            password: password,
            rememberMe: true,
            status: SignInStatus.failure,
            errorMessage: 'Invalid credentials',
          ),
        ],
      );
    });
  });
}

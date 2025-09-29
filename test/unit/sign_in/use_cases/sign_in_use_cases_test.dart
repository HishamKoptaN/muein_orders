import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mubinorders/core/error/api_error_model.dart';
import 'package:mubinorders/features/auth/sign_in/domain/repo/sign_in_repo.dart';
import 'package:mubinorders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';

import 'sign_in_use_cases_test.mocks.dart';

// Run build_runner to generate mocks
// Run: flutter pub run build_runner build --delete-conflicting-outputs

@GenerateMocks([
  SignInRepo,
  FirebaseAuth,
  User,
  UserCredential,
])
void main() {
  late MockSignInRepository mockRepository;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUser mockUser;
  late MockUserCredential mockUserCredential;
  late StreamController<User?> authStateController;
  late SignInUseCases signInUseCases;

  setUp(() {
    mockRepository = MockSignInRepository();
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();
    mockUserCredential = MockUserCredential();
    authStateController = StreamController<User?>.broadcast();

    // Setup auth state changes
    when(mockFirebaseAuth.authStateChanges())
        .thenAnswer((_) => authStateController.stream);
    
    signInUseCases = SignInUseCases(mockRepository, mockFirebaseAuth);
  });

  group('SignInUseCases', () {
    const tEmail = 'test@example.com';
    const tPassword = 'password123';
    const tRememberMe = true;
    const tToken = 'test_token';

    test(
      'should return token when sign in with email and password is successful',
      () async {
        // arrange
        when(mockRepository.signInWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
          rememberMe: anyNamed('rememberMe'),
        ),).thenAnswer((_) async => Right(mockUserCredential));

        // act
        final result = await signInUseCases.signInWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
          rememberMe: tRememberMe,
        );

        // assert
        expect(result, const Right('test_token'));
        verify(mockRepository.signInWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
          rememberMe: tRememberMe,
        ),);
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return ApiErrorModel when sign in with email and password fails',
      () async {
        // arrange
        const error = ApiErrorModel(message: 'Invalid credentials');
        when(mockRepository.signInWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
          rememberMe: anyNamed('rememberMe'),
        ),).thenAnswer((_) async => const Left(error));

        // act
        final result = await signInUseCases.signInWithEmailAndPassword(
          email: tEmail,
          password: 'wrong_password',
          rememberMe: tRememberMe,
        );

        // assert
        expect(result, const Left(error));
        verify(mockRepository.signInWithEmailAndPassword(
          email: tEmail,
          password: 'wrong_password',
          rememberMe: tRememberMe,
        ),);
        verifyNoMoreInteractions(mockRepository);
      },
    );
  });
  
  tearDown(() {
    authStateController.close();
  });
}

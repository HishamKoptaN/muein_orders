import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mock.dart';
import 'package:mockito/annotations.dart';

import 'package:mubin_orders/core/error/api_error_model.dart';

// Generate mocks
@GenerateMocks([
  FirebaseAuth,
  UserCredential,
  User,
])
import 'sign_in_use_cases_test.mocks.dart';

import 'package:mubin_orders/features/auth/sign_in/domain/repo/sign_in_repo.dart';
import 'package:mubin_orders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';

// Mock classes
class MockSignInRepository extends Mock implements SignInRepository {}

// Use generated mocks instead of manual mocks
void main() {
  late SignInUseCases useCases;
  late MockSignInRepository mockRepository;

  late MockFirebaseAuth mockFirebaseAuth;
  late MockUser mockUser;
  late MockUserCredential mockUserCredential;

  setUp(() {
    mockRepository = MockSignInRepository();
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();
    mockUserCredential = MockUserCredential();
    
    // Setup mock behavior
    when(mockFirebaseAuth.authStateChanges()).thenAnswer((_) => const Stream.empty());
    when(mockUser.uid).thenReturn('test_uid');
    when(mockUser.email).thenReturn('test@example.com');
    when(mockUser.displayName).thenReturn('Test User');
    when(mockUser.emailVerified).thenReturn(true);
    when(mockUserCredential.user).thenReturn(mockUser);
    
    useCases = SignInUseCases(mockRepository, mockFirebaseAuth);
  });

  const tEmail = 'test@example.com';
  const tPassword = 'Test@123';
  final tUserCredential = mockUserCredential;
  final tApiError = ApiErrorModel(message: 'Authentication failed');

  group('signInWithEmailAndPassword', () {
    test(
      'should return UserCredential when repository call is successful',
      () async {
        // arrange
        when(mockRepository.signInWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
          rememberMe: true,
        )).thenAnswer((_) async => Right(tUserCredential));

        // act
        final result = await useCases.signInWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
          rememberMe: true,
        );

        // assert
        expect(result, equals(Right(tUserCredential)));
        verify(mockRepository.signInWithEmailAndPassword(
          email: tEmail,
          password: tPassword,
          rememberMe: true,
        ));
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return ApiErrorModel when repository call fails',
      () async {
        // arrange
        when(mockRepository.signInWithEmailAndPassword(
          email: tEmail,
          password: 'wrong_password',
          rememberMe: false,
        )).thenAnswer((_) async => Left(tApiError));

        // act
        final result = await useCases.signInWithEmailAndPassword(
          email: tEmail,
          password: 'wrong_password',
          rememberMe: false,
        );

        // assert
        expect(result, equals(Left(tApiError)));
        verify(mockRepository.signInWithEmailAndPassword(
          email: tEmail,
          password: 'wrong_password',
          rememberMe: false,
        ));
        verifyNoMoreInteractions(mockRepository);
      },
    );
  });

  group('signInWithGoogle', () {
    test(
      'should return UserCredential when Google sign in is successful',
      () async {
        // arrange
        when(mockRepository.signInWithGoogle())
            .thenAnswer((_) async => Right(tUserCredential));

        // act
        final result = await useCases.signInWithGoogle();

        // assert
        expect(result, equals(Right(tUserCredential)));
        verify(mockRepository.signInWithGoogle());
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return ApiErrorModel when Google sign in fails',
      () async {
        // arrange
        when(mockRepository.signInWithGoogle())
            .thenAnswer((_) async => Left(tApiError));

        // act
        final result = await useCases.signInWithGoogle();

        // assert
        expect(result, equals(Left(tApiError)));
        verify(mockRepository.signInWithGoogle());
        verifyNoMoreInteractions(mockRepository);
      },
    );
  });

  group('signInWithFacebook', () {
    test(
      'should return UserCredential when Facebook sign in is successful',
      () async {
        // arrange
        when(mockRepository.signInWithFacebook())
            .thenAnswer((_) async => Right(tUserCredential));

        // act
        final result = await useCases.signInWithFacebook();

        // assert
        expect(result, equals(Right(tUserCredential)));
        verify(mockRepository.signInWithFacebook());
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return ApiErrorModel when Facebook sign in fails',
      () async {
        // arrange
        when(mockRepository.signInWithFacebook())
            .thenAnswer((_) async => Left(tApiError));

        // act
        final result = await useCases.signInWithFacebook();

        // assert
        expect(result, equals(Left(tApiError)));
        verify(mockRepository.signInWithFacebook());
        verifyNoMoreInteractions(mockRepository);
      },
    );
  });

  group('signInWithApple', () {
    test(
      'should return UserCredential when Apple sign in is successful',
      () async {
        // arrange
        when(mockRepository.signInWithApple())
            .thenAnswer((_) async => Right(tUserCredential));

        // act
        final result = await useCases.signInWithApple();

        // assert
        expect(result, equals(Right(tUserCredential)));
        verify(mockRepository.signInWithApple());
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return ApiErrorModel when Apple sign in fails',
      () async {
        // arrange
        when(mockRepository.signInWithApple())
            .thenAnswer((_) async => Left(tApiError));

        // act
        final result = await useCases.signInWithApple();

        // assert
        expect(result, equals(Left(tApiError)));
        verify(mockRepository.signInWithApple());
        verifyNoMoreInteractions(mockRepository);
      },
    );
  });
}

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mubinorders/core/error/api_error_model.dart';
import 'package:mubinorders/features/auth/sign_in/domain/repo/sign_in_repo.dart';
import 'package:mubinorders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';

// Simple mock for SignInRepository
class MockSignInRepository extends Mock implements SignInRepository {
  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    if (email == 'test@example.com' && password == 'password123') {
      return right(MockUserCredential());
    } else if (email.isEmpty || password.isEmpty) {
      return left(ApiErrorModel(message: 'Email and password cannot be empty'));
    } else {
      return left(ApiErrorModel(message: 'Invalid email or password'));
    }
  }

  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithGoogle() async {
    try {
      return right(MockUserCredential(providerId: 'google.com'));
    } catch (e) {
      return left(ApiErrorModel(message: 'Google sign in failed'));
    }
  }

  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithApple() async {
    try {
      return right(MockUserCredential(providerId: 'apple.com'));
    } catch (e) {
      return left(ApiErrorModel(message: 'Apple sign in failed'));
    }
  }

  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithFacebook() async {
    try {
      return right(MockUserCredential(providerId: 'facebook.com'));
    } catch (e) {
      return left(ApiErrorModel(message: 'Facebook sign in failed'));
    }
  }
}

// Simple mock for UserCredential
class MockUserCredential implements UserCredential {
  final String providerId;
  
  MockUserCredential({this.providerId = 'password'});
  
  @override
  User? get user => MockUser(providerId: providerId);
  
  @override
  AuthCredential? get credential => null;
  
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// Simple mock for User
class MockUser implements User {
  final String providerId;
  
  MockUser({required this.providerId});
  
  @override
  String get uid => 'test_uid_${providerId.replaceAll('.', '_')}';
  
  @override
  String? get email => 'test@example.com';
  
  @override
  bool get emailVerified => true;
  
  @override
  String? get displayName => 'Test User';
  
  @override
  String? get phoneNumber => null;
  
  @override
  String? get photoURL => null;
  
  @override
  List<UserInfo> get providerData => [];
  
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  late SignInUseCases signInUseCases;
  late MockSignInRepository mockRepository;

  setUp(() {
    mockRepository = MockSignInRepository();
    signInUseCases = SignInUseCases(mockRepository);
  });

  group('Email/Password Sign In', () {
    test('should return UserCredential when credentials are valid', () async {
      // Act
      final result = await signInUseCases.signInWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
        rememberMe: true,
      );

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (error) => fail('Should have returned a UserCredential'),
        (userCredential) {
          expect(userCredential, isA<UserCredential>());
          expect(userCredential.user?.uid, 'test_uid_password');
        },
      );
    });

    test('should return error when credentials are invalid', () async {
      // Act
      final result = await signInUseCases.signInWithEmailAndPassword(
        email: 'wrong@example.com',
        password: 'wrongpassword',
        rememberMe: false,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (error) => expect(error.message, 'Invalid email or password'),
        (r) => fail('Should have returned an error'),
      );
    });

    test('should return error when email or password is empty', () async {
      // Act
      final result = await signInUseCases.signInWithEmailAndPassword(
        email: '',
        password: '',
        rememberMe: true,
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold(
        (error) => expect(error.message, 'Email and password cannot be empty'),
        (r) => fail('Should have returned an error'),
      );
    });
  });

  group('Social Sign In', () {
    test('should sign in with Google successfully', () async {
      // Act
      final result = await signInUseCases.signInWithGoogle();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (error) => fail('Should have signed in with Google successfully'),
        (userCredential) {
          expect(userCredential, isA<UserCredential>());
          expect(userCredential.user?.uid, 'test_uid_google_com');
        },
      );
    });

    test('should sign in with Apple successfully', () async {
      // Act
      final result = await signInUseCases.signInWithApple();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (error) => fail('Should have signed in with Apple successfully'),
        (userCredential) {
          expect(userCredential, isA<UserCredential>());
          expect(userCredential.user?.uid, 'test_uid_apple_com');
        },
      );
    });

    test('should sign in with Facebook successfully', () async {
      // Act
      final result = await signInUseCases.signInWithFacebook();

      // Assert
      expect(result.isRight(), true);
      result.fold(
        (error) => fail('Should have signed in with Facebook successfully'),
        (userCredential) {
          expect(userCredential, isA<UserCredential>());
          expect(userCredential.user?.uid, 'test_uid_facebook_com');
        },
      );
    });
  });
}

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubin_orders/features/auth/sign_in/domain/repo/sign_in_repo.dart';
import 'package:mubin_orders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart';

class MockUserCredential extends Mock implements UserCredential {}
class MockUser extends Mock implements User {}

class MockSignInRepository extends Mock implements SignInRepository {}

void main() {
  late SignInUseCases signInUseCases;
  late MockSignInRepository mockRepository;

  setUp(() {
    mockRepository = MockSignInRepository();
    signInUseCases = SignInUseCases(mockRepository);
  });

  test('signInWithEmailAndPassword should call repository with correct parameters', () async {
    // Arrange
    const email = 'test@example.com';
    const password = 'password123';
    const rememberMe = true;
    final mockUserCredential = MockUserCredential();
    
    when(() => mockRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
      rememberMe: rememberMe,
    )).thenAnswer((_) async => Right(mockUserCredential));

    // Act
    await signInUseCases.signInWithEmailAndPassword(
      email: email,
      password: password,
      rememberMe: rememberMe,
    );

    // Assert
    verify(() => mockRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
      rememberMe: rememberMe,
    )).called(1);
  });

  test('signInWithGoogle should call repository', () async {
    // Arrange
    final mockUserCredential = MockUserCredential();
    when(() => mockRepository.signInWithGoogle())
        .thenAnswer((_) async => Right(mockUserCredential));

    // Act
    await signInUseCases.signInWithGoogle();

    // Assert
    verify(() => mockRepository.signInWithGoogle()).called(1);
  });
}

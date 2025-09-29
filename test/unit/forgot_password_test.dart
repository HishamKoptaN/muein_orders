import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mubinorders/features/auth/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:mubinorders/features/auth/forgot_password/domain/usecases/send_password_reset_email_usecase.dart';

class MockForgotPasswordRepository extends Mock
    implements ForgotPasswordRepository {}

void main() {
  late SendPasswordResetEmailUseCase useCase;
  late MockForgotPasswordRepository mockRepository;

  setUp(() {
    mockRepository = MockForgotPasswordRepository();
    useCase = SendPasswordResetEmailUseCase(mockRepository);
  });

  group('SendPasswordResetEmailUseCase Tests', () {
    const email = 'test@example.com';

    test('نجاح إرسال رابط إعادة تعيين كلمة المرور', () async {
      // Arrange
      when(mockRepository.sendPasswordResetEmail(email))
          .thenAnswer((_) async => const Right(unit));

      // Act
      final result = await useCase.call(email);

      // Assert
      expect(result.isRight(), true);
      verify(mockRepository.sendPasswordResetEmail(email)).called(1);
    });

    test('فشل إرسال رابط إعادة تعيين كلمة المرور - البريد غير موجود', () async {
      // Arrange
      when(mockRepository.sendPasswordResetEmail(email)).thenAnswer(
          (_) async => const Left(ApiErrorModel(message: 'User not found')));

      // Act
      final result = await useCase.call(email);

      // Assert
      expect(result.isLeft(), true);
      verify(mockRepository.sendPasswordResetEmail(email)).called(1);
    });
  });
}

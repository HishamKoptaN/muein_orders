import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mock.dart';

import 'package:mubin_orders/core/error/failures.dart';
import 'package:mubin_orders/features/auth/forgot_password/domain/usecases/send_password_reset_email_usecase.dart';
import 'package:mubin_orders/features/auth/forgot_password/presentation/bloc/forgot_password_bloc.dart';

import 'forgot_password_bloc_test.mocks.dart';

@GenerateMocks([SendPasswordResetEmailUseCase])
void main() {
  late MockSendPasswordResetEmailUseCase mockSendPasswordResetEmailUseCase;
  late ForgotPasswordBloc forgotPasswordBloc;

  const testEmail = 'test@example.com';
  const testError = 'An error occurred';

  setUp(() {
    mockSendPasswordResetEmailUseCase = MockSendPasswordResetEmailUseCase();
    forgotPasswordBloc = ForgotPasswordBloc(mockSendPasswordResetEmailUseCase);
  });

  group('ForgotPasswordBloc', () {
    test('initial state is ForgotPasswordInitial', () {
      expect(forgotPasswordBloc.state, const ForgotPasswordState.initial());
    });

    group('SendPasswordResetEmail', () {
      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, success] when password reset email is sent successfully',
        build: () {
          when(mockSendPasswordResetEmailUseCase.call(email: testEmail))
              .thenAnswer((_) async => const Right(null));
          return forgotPasswordBloc;
        },
        act: (bloc) => bloc.add(const ForgotPasswordEvent.sendPasswordResetEmail(testEmail)),
        expect: () => [
          const ForgotPasswordState.loading(),
          const ForgotPasswordState.success(),
        ],
        verify: (_) {
          verify(mockSendPasswordResetEmailUseCase.call(email: testEmail)).called(1);
        },
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, failure] when password reset email fails',
        build: () {
          when(mockSendPasswordResetEmailUseCase.call(email: testEmail))
              .thenThrow(const ServerFailure(testError));
          return forgotPasswordBloc;
        },
        act: (bloc) => bloc.add(const ForgotPasswordEvent.sendPasswordResetEmail(testEmail)),
        expect: () => [
          const ForgotPasswordState.loading(),
          const ForgotPasswordState.failure('Server Failure: $testError'),
        ],
      );

      blocTest<ForgotPasswordBloc, ForgotPasswordState>(
        'emits [loading, failure] when an exception occurs',
        build: () {
          when(mockSendPasswordResetEmailUseCase.call(email: testEmail))
              .thenThrow(Exception('Unexpected error'));
          return forgotPasswordBloc;
        },
        act: (bloc) => bloc.add(const ForgotPasswordEvent.sendPasswordResetEmail(testEmail)),
        expect: () => [
          const ForgotPasswordState.loading(),
          isA<ForgotPasswordState>()
              .having((s) => s.toString(), 'error message contains exception', contains('Exception: ')),
        ],
      );
    });
  });
}

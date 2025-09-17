import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../../../../../core/error/failures.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/forgot_password_repository.dart';

@LazySingleton(as: ForgotPasswordRepository)
class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  final FirebaseAuth _auth;

  ForgotPasswordRepositoryImpl(this._auth);

  @override
  Future<ApiResult<void>> sendPasswordResetEmail({
    required String email,
  }) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const ApiResult.success(data: null);
    } on FirebaseAuthException catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: e.message ?? 'Failed to send password reset email',
        ),
      );
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: 'Failed to send password reset email. Please try again.',
        ),
      );
    }
  }
}

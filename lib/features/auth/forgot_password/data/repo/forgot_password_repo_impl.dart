import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/handlers/api_error_handler/api_error_handler.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/forgot_pass_repo.dart';

@LazySingleton(as: ForgotPassRepo)
class ForgotPasswordRepositoryImpl implements ForgotPassRepo {
  final FirebaseAuth _auth;

  ForgotPasswordRepositoryImpl(this._auth);

  @override
  Future<ApiResult<void>> sendPassResetEmail({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const ApiResult.success(data: null);
    } on FirebaseAuthException catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    } catch (e) {
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: 'Failed to send password reset email. Please try again.',
        ),
      );
    }
  }
}

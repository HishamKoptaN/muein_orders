import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/change_pass_repo.dart';

@LazySingleton(as: ChangePassRepo)
class ChangePassRepositoryImpl implements ChangePassRepo {
  final FirebaseAuth _auth;
  ChangePassRepositoryImpl(this._auth);
  @override
  Future<ApiResult<void>> update({required String password}) async {
    try {
      await _auth.currentUser!.updatePassword(password);
      return const ApiResult.success(data: null);
    } on FirebaseAuthException catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: e.message ?? 'Failed to send password reset email',
        ),
      );
    } catch (e) {
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: 'Failed to update password. Please try again.',
        ),
      );
    }
  }
}

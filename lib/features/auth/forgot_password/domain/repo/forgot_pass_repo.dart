import '../../../../../core/networking/api_result.dart';

abstract class ForgotPassRepo {
  Future<ApiResult<void>> sendPassResetEmail({required String email});
}

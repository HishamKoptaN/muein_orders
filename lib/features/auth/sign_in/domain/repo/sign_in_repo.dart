import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';

abstract class SignInRepo {
  Future<ApiResult<UserData>> signIn({
    required String email,
    required String password,
  });
}

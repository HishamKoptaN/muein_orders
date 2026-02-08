import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';

abstract class SignInRepo {
  Future<ApiResult<UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

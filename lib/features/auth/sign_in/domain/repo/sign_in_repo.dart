import '../../../../../core/errors/api_error_model.dart' show ApiErrorModel;
import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';

/// Handles user authentication including sign in with email/password,
/// social sign in, and token management.
abstract class SignInRepo {
  /// Signs in a user with email and password
  /// Returns [UserData] on success, or an [ApiErrorModel] on error
  Future<ApiResult<UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });


}

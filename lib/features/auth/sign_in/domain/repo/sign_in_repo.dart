import '../../../../../core/models/user_data.dart';
import 'package:error_handler/error_handler.dart';

abstract class SignInRepo {
  Future<ExecuteGuard<UserData>> signIn({
    required String email,
    required String password,
  });
}

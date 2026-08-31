import 'package:error_handler/error_handler.dart';

abstract class ForgotPassRepo {
  Future<ExecuteGuard<void>> sendPassResetEmail({required String email});
}

import 'package:error_handler/error_handler.dart';

abstract class ChangePassRepo {
  Future<ExecuteGuard<void>> update({required String password});
}

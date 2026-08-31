import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../repo/change_pass_repo.dart';

@lazySingleton
class SendPassResetEmailUseCase {
  final ChangePassRepo repo;
  SendPassResetEmailUseCase(this.repo);
  Future<ExecuteGuard<void>> update({required String password}) async {
    return await repo.update(password: password);
  }
}

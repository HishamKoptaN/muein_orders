import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../repo/forgot_pass_repo.dart';

@lazySingleton
class SendPassResetEmailUseCase {
  final ForgotPassRepo repo;
  SendPassResetEmailUseCase(this.repo);

  Future<ExecuteGuard<void>> sendPassResetEmail({required String email}) async {
    return await repo.sendPassResetEmail(email: email);
  }
}

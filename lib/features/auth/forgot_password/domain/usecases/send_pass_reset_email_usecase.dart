import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../repo/forgot_pass_repo.dart';

@lazySingleton
class SendPassResetEmailUseCase {
  final ForgotPassRepo repo;
  SendPassResetEmailUseCase(this.repo);

  Future<ApiResult<void>> sendPassResetEmail({required String email}) async {
    return await repo.sendPassResetEmail(email: email);
  }
}

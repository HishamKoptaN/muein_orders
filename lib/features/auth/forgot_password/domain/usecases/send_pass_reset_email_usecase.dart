import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../repo/forgot_pass_repo.dart';

@injectable
class SendPassResetEmailUseCase {
  final ForgotPassRepo repo;
  SendPassResetEmailUseCase(this.repo);

  Future<ApiResult<void>> call({required String email}) async {
    return await repo.sendPassResetEmail(email: email);
  }
}

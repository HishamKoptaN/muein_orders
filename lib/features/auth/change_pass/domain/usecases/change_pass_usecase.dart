import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../repo/change_pass_repo.dart';

@lazySingleton
class SendPassResetEmailUseCase {
  final ChangePassRepo repo;
  SendPassResetEmailUseCase(this.repo);
  Future<ApiResult<void>> update({required String password}) async {
    return await repo.update(password: password);
  }
}

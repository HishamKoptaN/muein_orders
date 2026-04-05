import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../repo/auth_repo.dart';

@singleton
class AuthUseCase {
  final AuthRepo authRepo;
  AuthUseCase({required this.authRepo});
  Future<ApiResult<bool>> check() async {
    return await authRepo.check();
  }

  Future<ApiResult<void>> signOut() async {
    return await authRepo.signOut();
  }
}

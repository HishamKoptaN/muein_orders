import 'package:injectable/injectable.dart' show LazySingleton;

import '../../../../../core/networking/api_result.dart';
import '../repo/auth_repo.dart';

@LazySingleton()
class AuthUseCase {
  final AuthRepo authRepo;
  AuthUseCase({
    required this.authRepo,
  });
  Future<ApiResult<bool>?> check() async {
    return await authRepo.check();
  }

  Future<ApiResult<void>> signOut() async {
    return await authRepo.signOut();
  }
}

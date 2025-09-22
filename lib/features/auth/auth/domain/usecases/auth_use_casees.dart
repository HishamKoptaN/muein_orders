import 'package:injectable/injectable.dart' show LazySingleton;

import '../../../../../core/networking/api_result.dart';
import '../repo/auth_repo.dart';

@LazySingleton()
class AuthUseCase {
  final AuthRepo authRepo;
  AuthUseCase({
    required this.authRepo,
  });
  Future<ApiResult<void>?> check() async {
    return await authRepo.check();
  }
}

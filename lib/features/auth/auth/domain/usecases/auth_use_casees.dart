import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/networking/api_result.dart';
import '../repo/auth_repo.dart';

@singleton
class AuthUseCases {
  final AuthRepo authRepo;
  AuthUseCases({required this.authRepo});
  Future<ApiResult<void>> check() async {
    return await authRepo.checkFirebase().then((res) async {
      return res.when(
        success: (v) async {
          return await authRepo.check();
        },
        failure: (_) async {
          return await authRepo.signOut();
        },
      );
    });
  }

  Future<ApiResult<void>> authToken() async {
    return await authRepo.authToken();
  }

  Future<ApiResult<void>> signOut() async {
    return await authRepo.signOut();
  }
}

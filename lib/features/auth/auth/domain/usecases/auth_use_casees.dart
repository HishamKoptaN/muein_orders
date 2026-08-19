import 'package:injectable/injectable.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/networking/api_result.dart';
import '../repo/auth_repo.dart';

@singleton
class AuthUseCases {
  final AuthRepo authRepo;
  AuthUseCases({required this.authRepo});
  Future<ApiResult<void>> check() async {
    final res = await authRepo.checkFirebase();
    return res.when(
      success: (v) async {
        return await authRepo.check();
      },
      failure: (e) async {
        return await getIt<AuthUseCases>().authToken();
      },
    );
  }

  Future<ApiResult<void>> authToken() async {
    return await authRepo.authToken();
  }

  Future<ApiResult<void>> signOut() async {
    return await authRepo.signOut();
  }
}

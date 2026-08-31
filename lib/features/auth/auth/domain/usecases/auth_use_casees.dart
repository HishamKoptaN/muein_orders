import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../repo/auth_repo.dart';

@singleton
class AuthUseCases {
  final AuthRepo authRepo;
  AuthUseCases({required this.authRepo});
  Future<ExecuteGuard<void>> check() async {
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

  Future<ExecuteGuard<void>> authToken() async {
    return await authRepo.authToken();
  }

  Future<ExecuteGuard<void>> signOut() async {
    return await authRepo.signOut();
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import '../../domain/repo/change_pass_repo.dart';

@LazySingleton(as: ChangePassRepo)
class ChangePassRepositoryImpl implements ChangePassRepo {
  final FirebaseAuth _auth;
  ChangePassRepositoryImpl(this._auth);
  @override
  Future<ExecuteGuard<void>> update({required String password}) async {
    try {
      await _auth.currentUser!.updatePassword(password);
      return const ExecuteGuard.success(data: null);
    } on FirebaseAuthException catch (e) {
      return ExecuteGuard.failure(
        errorInfo: ErrorInfo(
          message: e.message ?? 'Failed to send password reset email',
        ),
      );
    } catch (e) {
      return const ExecuteGuard.failure(
        errorInfo: ErrorInfo(
          message: 'Failed to update password. Please try again.',
        ),
      );
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import '../../domain/repo/forgot_pass_repo.dart';

@LazySingleton(as: ForgotPassRepo)
class ForgotPasswordRepositoryImpl implements ForgotPassRepo {
  final FirebaseAuth _auth;

  ForgotPasswordRepositoryImpl(this._auth);

  @override
  Future<ExecuteGuard<void>> sendPassResetEmail({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const ExecuteGuard.success(data: null);
    } on FirebaseAuthException catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    } catch (e) {
      return const ExecuteGuard.failure(
        errorInfo: ErrorInfo(
          message: 'Failed to send password reset email. Please try again.',
        ),
      );
    }
  }
}

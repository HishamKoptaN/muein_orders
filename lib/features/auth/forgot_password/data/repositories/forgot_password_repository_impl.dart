import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/forgot_password_repository.dart';

class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  final FirebaseAuth _auth;
  ForgotPasswordRepositoryImpl(this._auth);

  @override
  Future<void> sendPasswordResetEmail({required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
}

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_logger.dart';
import '../repo/sign_in_repo.dart';

@lazySingleton
class SignInUseCases {
  final SignInRepo _repository;
  final FirebaseAuth _firebaseAuth;
  SignInUseCases(this._repository, this._firebaseAuth);
  Stream<User?> get onAuthStateChanged => _firebaseAuth.authStateChanges();
  Future<ApiResult<UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    AppLogger.info('🚀 استدعاء UseCase', tag: 'SIGNIN_USECASE');
    AppLogger.info('📧 Email: $email', tag: 'SIGNIN_USECASE');
    final result = await _repository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.when(
      success: (data) {
        final token = data?.token;
        AppLogger.info(
          '✅ نجاح - Token: ${token != null ? "موجود" : "null"}',
          tag: 'SIGNIN_USECASE',
        );
      },
      failure: (error) => AppLogger.error(
        '❌ فشل: ${error.message}',
        tag: 'SIGNIN_USECASE',
        error: error,
      ),
    );
    return result;
  }
}

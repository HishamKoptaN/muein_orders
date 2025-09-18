import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../repo/sign_in_repo.dart';

@lazySingleton
class SignInUseCases {
  final SignInRepo _repository;
  final FirebaseAuth _firebaseAuth;

  SignInUseCases(this._repository, this._firebaseAuth);

  /// Stream that emits the current Firebase user when the auth state changes
  Stream<User?> get onAuthStateChanged => _firebaseAuth.authStateChanges();

  /// Sign in with email and password
  /// Returns [ApiResult<UserData>] containing user data on success or error model on failure
  Future<ApiResult<UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await _repository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}

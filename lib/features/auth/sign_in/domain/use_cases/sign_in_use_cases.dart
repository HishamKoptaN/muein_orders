import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../repo/sign_in_repo.dart';

@lazySingleton
class SignInUseCases {
  final SignInRepo _repository;
  final FirebaseAuth _firebaseAuth;

  SignInUseCases(this._repository, this._firebaseAuth);

  /// A stream that emits the current user when the authentication state changes
  Stream<User?> get onAuthStateChanged => _firebaseAuth.authStateChanges();

  /// Signs in with email and password and returns a token on success
  Future<Either<ApiErrorModel, String>> signInWithEmailAndPassword({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    final result = await _repository.signInWithEmailAndPassword(
      email: email,
      password: password,
      rememberMe: rememberMe,
    );

    return result.fold(
      (failure) => Left(ApiErrorModel.fromFailure(failure)),
      (userData) => Right(userData.token ?? ''),
    );
  }

  /// Gets the current authentication token
  Future<String?> getAuthToken() async => await _repository.getAuthToken();

  /// Signs out the current user
  Future<Either<ApiErrorModel, void>> signOut() async {
    try {
      final result = await _repository.signOut();
      await _firebaseAuth.signOut();
      return result.fold(
        (failure) => Left(ApiErrorModel.fromFailure(failure)),
        (_) => const Right(null),
      );
    } catch (e) {
      return Left(
        ApiErrorModel(
          message: 'Failed to sign out: $e',
          statusCode: 500,
          error: 'SignOutError',
        ),
      );
    }
  }
}

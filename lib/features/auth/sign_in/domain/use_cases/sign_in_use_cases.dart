import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../repositories/sign_in_repository.dart';

@injectable
class SignInUseCases {
  final SignInRepository _repository;

  SignInUseCases(this._repository);

  Future<Either<ApiErrorModel, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await _repository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<Either<ApiErrorModel, UserCredential>> signInWithGoogle() async {
    return await _repository.signInWithGoogle();
  }

  Future<Either<ApiErrorModel, UserCredential>> signInWithFacebook() async {
    return await _repository.signInWithFacebook();
  }

  Future<Either<ApiErrorModel, UserCredential>> signInWithApple() async {
    return await _repository.signInWithApple();
  }
}

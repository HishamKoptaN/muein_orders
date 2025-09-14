import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../core/error/api_error_model.dart';

abstract class SignInRepository {
  Future<Either<ApiErrorModel, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<ApiErrorModel, UserCredential>> signInWithGoogle();
  
  Future<Either<ApiErrorModel, UserCredential>> signInWithFacebook();
  
  Future<Either<ApiErrorModel, UserCredential>> signInWithApple();
}

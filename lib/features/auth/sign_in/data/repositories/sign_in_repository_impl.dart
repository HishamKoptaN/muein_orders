import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/api_error_model.dart';
import '../../domain/repositories/sign_in_repository.dart';

@LazySingleton(as: SignInRepository)
class SignInRepositoryImpl implements SignInRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  SignInRepositoryImpl(this._auth, this._googleSignIn);

  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      log('Sign in error: ${e.code} - ${e.message}');
      return Left(_handleFirebaseAuthError(e));
    } catch (e, stackTrace) {
      log('Unexpected sign in error', error: e, stackTrace: stackTrace);
      return Left(ApiErrorModel(
        message: 'An unexpected error occurred. Please try again.',
        error: 'unexpected_error',
      ));
    }
  }

  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Left(ApiErrorModel(
          message: 'Sign in was cancelled',
          error: 'sign_in_cancelled',
        ));
      }

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      log('Google sign in error: ${e.code} - ${e.message}');
      return Left(_handleFirebaseAuthError(e));
    } catch (e, stackTrace) {
      log('Unexpected Google sign in error', error: e, stackTrace: stackTrace);
      return Left(ApiErrorModel(
        message: 'Failed to sign in with Google. Please try again.',
        error: 'google_sign_in_failed',
      ));
    }
  }
  
  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithFacebook() async {
    // TODO: Implement Facebook sign-in
    // This requires the facebook_auth package
    return Left(ApiErrorModel(
      message: 'Facebook sign in is not implemented yet',
      error: 'not_implemented',
    ));
  }
  
  @override
  Future<Either<ApiErrorModel, UserCredential>> signInWithApple() async {
    // TODO: Implement Apple sign-in
    // This requires the sign_in_with_apple package
    return Left(ApiErrorModel(
      message: 'Apple sign in is not implemented yet',
      error: 'not_implemented',
    ));
  }

  ApiErrorModel _handleFirebaseAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
      case 'user-disabled':
      case 'invalid-email':
      case 'wrong-password':
        return ApiErrorModel(
          message: 'Invalid email or password. Please try again.',
          error: 'invalid_credentials',
        );
      case 'too-many-requests':
        return ApiErrorModel(
          message: 'Too many failed attempts. Please try again later or reset your password.',
          error: 'too_many_attempts',
        );
      case 'network-request-failed':
        return ApiErrorModel(
          message: 'Network error. Please check your internet connection.',
          error: 'network_error',
        );
      default:
        return ApiErrorModel(
          message: 'Authentication failed. Please try again.',
          error: e.code,
        );
    }
  }
}

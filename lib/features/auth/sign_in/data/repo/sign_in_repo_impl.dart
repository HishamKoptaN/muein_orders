import 'dart:developer' as developer;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/database/shared_pref_keys.dart';
import '../../../../../core/di/api_module.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/sign_in_repo.dart';
import '../datasources/sign_in_api.dart';
import '../models/sign_in_req_body_model.dart';

@LazySingleton(as: SignInRepo)
class SignInRepoImpl implements SignInRepo {
  final FirebaseAuth _auth;
  final FirebaseMessaging _firebaseMessaging;
  final SignInApi signInApi;
  final TokenStorage tokenStorage;
  @factoryMethod
  SignInRepoImpl(
    this._auth,
    this._firebaseMessaging,
    this.signInApi,
    this.tokenStorage,
  );

  @override
  Future<ApiResult<UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final idToken = await userCredential.user?.getIdToken();
      developer.log('Firebase ID Token: $idToken');
      if (idToken == null) {
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Failed to authenticate. Please try again.',
            error: 'token_error',
            statusCode: 401,
          ),
        );
      }
      final fcmToken = await _firebaseMessaging.getToken();
      final res = await signInApi.authToken(
        SignInReqBodyModel(
          idToken: idToken,
          fcmToken: fcmToken ?? '',
          deviceType: 'android',
        ),
      );
      if (res.token.isEmpty) {
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Invalid server response. Please try again.',
            error: 'invalid_response',
            statusCode: 400,
          ),
        );
      }
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: res.token,
      );
      await getIt<AuthInterceptor>().updateToken();
      return ApiResult.success(
        data: UserData(token: res.token, fcmToken: fcmToken),
      );
    } on FirebaseAuthException catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: e.message ?? 'Authentication failed',
          error: 'authentication_error',
          statusCode: 401,
        ),
      );
    } catch (e) {
      debugPrint('Sign in error: $e');
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: 'An unexpected error occurred',
          error: 'unknown_error',
          statusCode: 500,
        ),
      );
    }
  }
}

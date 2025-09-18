import 'dart:developer' as developer;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/error/api_error_model.dart';
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
  @factoryMethod
  SignInRepoImpl(
    this._auth,
    this._firebaseMessaging,
    this.signInApi,
  );

  @override
  Future<ApiResult<UserData>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      // 1. Sign in with Firebase
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // 2. Get the Firebase ID token
      final idToken = await userCredential.user?.getIdToken();
      if (idToken == null) {
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Failed to authenticate. Please try again.',
            error: 'token_error',
            statusCode: 401,
          ),
        );
      }

      // 3. Send token to Laravel backend to get JWT
      final res = await signInApi.authToken(
        SignInReqBodyModel(
          idToken: idToken,
        ),
      );

      // 4. Save the JWT token to secure storage
      await SharedPrefHelper.setSecuredString(
        key: 'auth_token',
        value: res.token,
      );
      // 4. Get FCM token
      final fcmToken = await _firebaseMessaging.getToken();
      if (res.token.isEmpty) {
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Invalid server response. Please try again.',
            error: 'invalid_response',
            statusCode: 400,
          ),
        );
      }
      // 5. Save tokens to secure storage
      await SharedPrefHelper.setSecuredString(
        key: 'auth_token',
        value: idToken,
      );
      await SharedPrefHelper.setSecuredString(
        key: 'fcm_token',
        value: fcmToken!,
      );
      // 6. Return success with the token data
      // 7. Return success with the user data
      return ApiResult.success(
        data: UserData(
          token: res.token,
          fcmToken: fcmToken,
        ),
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
      developer.log('Sign in error: $e', name: 'SignInRepoImpl');
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

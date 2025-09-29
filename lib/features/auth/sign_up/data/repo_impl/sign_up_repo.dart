import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/database/shared_pref_keys.dart';
import '../../../../../core/di/api_module.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/error/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/entities/signup_req_entity.dart';
import '../../domain/repo/sign_up_repo.dart';
import '../data_sources/sign_up_api.dart';
import '../models/sign_up_req_model.dart';

@LazySingleton(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final SignUpApi _api;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final TokenStorage tokenStorage;
  SignUpRepoImpl(this._api, this.tokenStorage);

  @override
  Future<ApiResult<void>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    // 1. First, create user in Firebase Authentication
    UserCredential? userCredential;
    try {
      // Create user in Firebase with phone as email
      userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: signUpReq.email ?? '',
        password: signUpReq.password ?? '',
      );

      // Update user display name with the provided name
      await userCredential.user?.updateDisplayName(signUpReq.name);
      await userCredential.user?.reload();

      // Get the Firebase ID token
      final idToken = await userCredential.user?.getIdToken() ?? '';

      if (idToken.isEmpty) {
        throw FirebaseAuthException(
          code: 'token-error',
          message: 'Failed to get Firebase ID token',
        );
      }

      // Log the Firebase ID token
      log('[log] 🔥 Firebase ID Token: $idToken');

      // 2. Get FCM token
      final fcmToken = await FirebaseMessaging.instance.getToken() ?? '';

      // 3. If Firebase auth is successful, proceed with your API call
      final res = await _api.signUp(
        SignUpReqModel(
          name: signUpReq.name,
          phone: signUpReq.phone,
          idToken: idToken,
          fcmToken: signUpReq.fcmToken ?? fcmToken,
        ),
      );

      // Store the JWT token in SharedPreferencesAsync
      if (res.token != null) {
        await SharedPrefHelper.setSecuredString(
          key: SharedPrefKeys.jwtToken,
          value: res.token!,
        );
      }
      await getIt<AuthInterceptor>().updateToken();
      return const ApiResult.success(
        data: null,
      );
    } on FirebaseAuthException catch (e) {
      log('Firebase Auth Error: ${e.message}');
      if (userCredential?.user != null) {
        await userCredential!.user!.delete();
      }
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: e.message ?? 'Firebase authentication failed',
          statusCode: 400,
        ),
      );
    } on DioException catch (error) {
      log('SignUp Error: ${error.message}');
      // Clean up Firebase user if API call fails
      if (userCredential?.user != null) {
        await userCredential!.user!.delete();
      }
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message:
              error.response?.data?['message']?.toString() ?? 'Sign up failed',
          statusCode: error.response?.statusCode ?? 400,
        ),
      );
    } catch (e) {
      log('Unexpected Error in SignUp: $e');
      // Clean up Firebase user if something unexpected happens
      if (userCredential?.user != null) {
        await userCredential!.user!.delete();
      }
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: 'An unexpected error occurred',
          statusCode: 500,
        ),
      );
    }
  }
}

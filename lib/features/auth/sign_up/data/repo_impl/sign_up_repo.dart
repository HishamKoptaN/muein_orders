import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/database/shared_pref_keys.dart';
import '../../../../../core/di/api_module.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/services/device_service.dart';
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
  Future<ApiResult<void>> signUp({required SignUpReqEntity signUpReq}) async {
    UserCredential? userCredential;
    try {
      userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: signUpReq.email,
        password: signUpReq.password,
      );
      await userCredential.user?.updateDisplayName(signUpReq.name);
      await userCredential.user?.reload();
      final idToken = await userCredential.user?.getIdToken() ?? '';
      if (idToken.isEmpty) {
        throw FirebaseAuthException(
          code: 'token-error',
          message: 'Failed to get Firebase ID token',
        );
      }
      log('[log] 🔥 Firebase ID Token: $idToken');
      final fcmToken = await FirebaseMessaging.instance.getToken() ?? '';
      final res = await _api.signUp(
        SignUpReqModel(
          name: signUpReq.name,
          phone: signUpReq.phone,
          idToken: idToken,
          fcmToken: fcmToken,
          deviceType: DeviceService.getDeviceType(),
        ),
      );
      if (res.token != null) {
        await SharedPrefHelper.setSecuredString(
          key: SharedPrefKeys.jwtToken,
          value: res.token!,
        );
      }
      await getIt<AuthInterceptor>().updateToken();
      return const ApiResult.success(data: null);
    } on FirebaseAuthException catch (e, st) {
      if (userCredential?.user != null) {
        await userCredential!.user!.delete();
      }
      await FirebaseCrashlytics.instance.recordError(
        e,
        st,
        reason: 'FirebaseAuthException during sign up: ${e.code}',
      );
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: e.message ?? 'Firebase authentication failed',
        ),
      );
    } on DioException catch (error, st) {
      if (userCredential?.user != null) {
        await userCredential!.user!.delete();
      }
      await FirebaseCrashlytics.instance.recordError(
        error,
        st,
        reason: 'DioException during sign up: ${error.message}',
      );
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message:
              error.response?.data?['message']?.toString() ?? 'Sign up failed',
        ),
      );
    } catch (e, st) {
      if (userCredential?.user != null) {
        await userCredential!.user!.delete();
      }
      await FirebaseCrashlytics.instance.recordError(
        e,
        st,
        reason: 'Unexpected error during sign up',
      );
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: 'An unexpected error occurred'),
      );
    }
  }
}

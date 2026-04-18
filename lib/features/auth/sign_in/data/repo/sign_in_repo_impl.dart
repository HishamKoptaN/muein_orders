import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/database/shared_pref_keys.dart';
import '../../../../../core/di/api_module.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/errors/handlers/api_error_handler/api_error_handler.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_logger.dart';
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
    AppLogger.info('🚀 بدء signInWithEmailAndPassword', tag: 'SIGNIN_REPO');
    AppLogger.info('📧 Email: $email', tag: 'SIGNIN_REPO');

    // تسجيل بيانات المستخدم للـ Context
    AppLogger.setUserContext(email);

    try {
      AppLogger.info('🔥 استدعاء Firebase Auth...', tag: 'SIGNIN_REPO');
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      AppLogger.info(
        '✅ Firebase Auth نجح - UID: ${userCredential.user?.uid}',
        tag: 'SIGNIN_REPO',
      );

      final idToken = await userCredential.user?.getIdToken();
      AppLogger.info(
        '🎫 Firebase ID Token: ${idToken != null ? "موجود" : "null"}',
        tag: 'SIGNIN_REPO',
      );

      if (idToken == null) {
        AppLogger.warning('❌ ID Token is null', tag: 'SIGNIN_REPO');
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Failed to authenticate. Please try again.',
          ),
        );
      }

      // 🔧 Fix: Skip FCM on iOS Simulator - it requires APNS setup
      String? fcmToken;
      if (Platform.isIOS) {
        AppLogger.info(
          '📱 iOS detected - skipping FCM token',
          tag: 'SIGNIN_REPO',
        );
        fcmToken = null;
      } else {
        try {
          fcmToken = await _firebaseMessaging.getToken();
          AppLogger.info(
            '📱 FCM Token: ${fcmToken != null ? "موجود" : "null"}',
            tag: 'SIGNIN_REPO',
          );
        } catch (e) {
          AppLogger.warning('⚠️ FCM token failed: $e', tag: 'SIGNIN_REPO');
          fcmToken = null;
        }
      }

      AppLogger.info('🌐 استدعاء API authToken...', tag: 'SIGNIN_REPO');
      final res = await signInApi.authToken(
        SignInReqBodyModel(
          idToken: idToken,
          fcmToken: fcmToken ?? '',
          deviceType: 'android',
        ),
      );
      AppLogger.info(
        '✅ API Response - Token: ${res.token.isNotEmpty ? "موجود" : "فارغ"}',
        tag: 'SIGNIN_REPO',
      );

      if (res.token.isEmpty) {
        AppLogger.warning('❌ Server returned empty token', tag: 'SIGNIN_REPO');
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Invalid server response. Please try again.',
          ),
        );
      }

      AppLogger.info('💾 حفظ JWT Token في SharedPrefs...', tag: 'SIGNIN_REPO');
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.jwtToken,
        value: res.token,
      );
      await getIt<AuthInterceptor>().updateToken();
      AppLogger.info('✅ تم حفظ Token بنجاح', tag: 'SIGNIN_REPO');

      // تسجيل نجاح تسجيل الدخول
      AppLogger.event('sign_in_success', parameters: {'email': email});

      return ApiResult.success(
        data: UserData(token: res.token, fcmToken: fcmToken),
      );
    } on FirebaseAuthException catch (error, stackTrace) {
      AppLogger.error(
        '❌ FirebaseAuthException: ${error.code} - ${error.message}',
        tag: 'SIGNIN_REPO',
        error: error,
        stackTrace: stackTrace,
      );
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    } catch (error, stackTrace) {
      AppLogger.error(
        '❌ Generic Error: $error',
        tag: 'SIGNIN_REPO',
        error: error,
        stackTrace: stackTrace,
      );
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }
}

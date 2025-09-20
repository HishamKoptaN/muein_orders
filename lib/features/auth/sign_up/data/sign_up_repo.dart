import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/database/shared_pref_helper.dart';
import '../../../../core/database/shared_pref_keys.dart';
import '../../../../core/error/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../domain/entities/sign_up_res_entity.dart';
import '../domain/entities/signup_req_entity.dart';
import '../domain/repo/sign_up_repo.dart';
import 'data_sources/sign_up_api.dart';
import 'models/sign_up_req_model.dart';

@Injectable(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final SignUpApi _api;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  SignUpRepoImpl(this._api);

  @override
  Future<ApiResult<SignUpResEntity>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    // 1. First, create user in Firebase Authentication
    UserCredential? userCredential;
    try {
      // Generate a temporary password using phone and timestamp
      final tempPassword =
          '${signUpReq.phone}@${DateTime.now().millisecondsSinceEpoch}';

      // Create user in Firebase with phone as email
      userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: '${signUpReq.phone}@mubin.com',
        password: tempPassword,
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
      // Store the token securely
      await SharedPrefHelper.setSecuredString(
        key: SharedPrefKeys.userToken,
        value: res.token,
      );
      // Log successful storage
      debugPrint('[log] ✅ تم تخزين التوكن بنجاح');
      return ApiResult.success(
        data: SignUpResEntity(
          token: res.token,
        ),
      );
    } on FirebaseAuthException catch (e) {
      log('Firebase Auth Error: ${e.message}');
      // Clean up Firebase user if it was created
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

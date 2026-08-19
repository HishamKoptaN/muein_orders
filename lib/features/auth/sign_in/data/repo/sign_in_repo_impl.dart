import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/handlers/api_error_handler/error_handler.dart';
import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/services/token_service.dart';
import '../../domain/repo/sign_in_repo.dart';
import '../datasources/sign_in_api.dart';
import '../models/sign_in_req_body_model.dart';

@LazySingleton(as: SignInRepo)
class SignInRepoImpl implements SignInRepo {
  final FirebaseAuth _auth;
  final FirebaseMessaging _firebaseMessaging;
  final SignInApi signInApi;
  final TokenService _tokenService;
  @factoryMethod
  SignInRepoImpl(
    this._auth,
    this._firebaseMessaging,
    this.signInApi,
    this._tokenService,
  );
  @override
  Future<ApiResult<UserData>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      String? fcmToken;
      if (Platform.isIOS) {
        fcmToken = null;
      } else {
        try {
          fcmToken = await _firebaseMessaging.getToken();
        } catch (e) {
          fcmToken = null;
        }
      }
      await signInApi.authToken(
        SignInReqBodyModel(
          idToken: await _tokenService.getIdToken(forceRefresh: true),
          // fcmToken: fcmToken ?? '',
          deviceType: 'android',
        ),
      );
      return const ApiResult.success(data: null);
    } on FirebaseAuthException catch (error, st) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: error));
    } catch (error, st) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}

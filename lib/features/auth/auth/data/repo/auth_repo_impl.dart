import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/database/shared_pref_helper.dart';
import '../../../../../core/utils/database/shared_pref_keys.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/errors/handlers/api_error_handler/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/services/auth_storage_service.dart';
import '../../../../../core/utils/services/device_service.dart';
import '../../../../../core/utils/services/firebase_messaging/firebase_messaging_service.dart';
import '../../../../../core/utils/services/token_service.dart';
import '../../domain/repo/auth_repo.dart';
import '../datasources/auth_api.dart';
import '../models/exchange_token_req_body_model.dart';

@Singleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _fa;
  final AuthApi _api;
  final TokenService _tokenService;
  final AuthStorageService _authStorageService;
  AuthRepoImpl(
    this._fa,
    this._api,
    this._tokenService,
    this._authStorageService,
  );

  @override
  Future<ApiResult<void>> checkFirebase() async {
    if (await SharedPrefHelper.getBool(key: SharedPrefKeys.rememberMe)) {
      try {
        if (_fa.currentUser == null) {
          return const ApiResult.failure(errorInfo: ErrorInfo(message: ''));
        }
        return const ApiResult.success(data: null);
      } catch (e) {
        return ApiResult.failure(errorInfo: ErrorHandler.handle(error: e));
      }
    }
    return signOut();
  }

  @override
  Future<ApiResult<void>> check() async {
    try {
      await _api.check();
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ApiResult<void>> authToken() async {
    try {
      await _api
          .authToken(
            exchangeToken: ExchangeTokenReqBodyModel(
              idToken: await _tokenService.getIdToken(forceRefresh: true),
              fcmToken: await FirebaseMessagingService.getFcmToken(),
              device: await DeviceService.getDeviceInfo(),
            ),
          )
          .then((result) async {
            await _authStorageService.storeJwtToken(result.token);
            return const ApiResult.success(data: null);
          });
      return const ApiResult.success(data: null);
    } catch (e, st) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ApiResult<void>> signOut() async {
    try {
      await _api.logout();
      await _fa.signOut();
      await SharedPrefHelper.clearAllSecuredData();
      await SharedPrefHelper.clearAllData();
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }
}

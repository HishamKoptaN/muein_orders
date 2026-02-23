import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/database/shared_pref_keys.dart';
import '../../../../../core/errors/api_error_model.dart';
import '../../../../../core/errors/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/auth_repo.dart';
import '../datasources/auth_api.dart';
import '../models/auth_res_model.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _fa;
  final AuthApi _api;
  AuthRepoImpl(this._fa, this._api);

  @override
  Future<bool> hasFirebaseUser() async => _fa.currentUser != null;

  @override
  Future<ApiResult<bool>> check() async {
    try {
      await _api.check();
      return ApiResult.success(data: true);
    } catch (e, _) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: AppErrorHandler.getErrorMessage(e),
          statusCode: 401,
        ),
      );
    }
  }

  @override
  Future<ApiResult<String>> getJwtToken() async {
    try {
      final jwt = await SharedPrefHelper.getSecuredString(
        key: SharedPrefKeys.jwtToken,
      );
      return ApiResult.success(data: jwt);
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: AppErrorHandler.getErrorMessage(e),
          statusCode: 401,
        ),
      );
    }
  }

  @override
  Future<ApiResult<AuthResModel>> exchangeIdTokenForJwt() async {
    try {
      final user = _fa.currentUser;
      if (user == null) {
        throw Exception('No Firebase user');
      }
      final idToken = await user.getIdToken(true);
      final res = await _api.exchangeIdTokenForJwt(
        refreshData: {'id_token': idToken},
      );
      return ApiResult.success(data: res);
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: AppErrorHandler.getErrorMessage(e),
          statusCode: 401,
        ),
      );
    }
  }

  @override
  Future<void> saveJwt(String jwt) async {
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.jwtToken,
      value: jwt,
    );
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
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(
          message: AppErrorHandler.getErrorMessage(e),
          statusCode: 401,
        ),
      );
    }
  }
}

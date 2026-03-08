import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/shared_pref_helper.dart';
import '../../../../../core/errors/handlers/api_error_handler/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/repo/auth_repo.dart';
import '../datasources/auth_api.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _fa;
  final AuthApi _api;
  AuthRepoImpl(this._fa, this._api);
  Future<bool> hasFirebaseUser() async => _fa.currentUser != null;

  @override
  Future<ApiResult<bool>> check() async {
    try {
      await _api.check();
      final hasUser = await hasFirebaseUser();
      return ApiResult.success(data: hasUser);
    } catch (e) {
      return ApiResult.failure(apiErrorModel: ApiErrorHandler.handle(error: e));
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
      return ApiResult.failure(apiErrorModel: ApiErrorHandler.handle(error: e));
    }
  }
}

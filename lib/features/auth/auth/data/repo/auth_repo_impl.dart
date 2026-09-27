import 'package:error_handler/error_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/database/shared_pref_helper.dart';
import '../../../../../core/utils/database/shared_pref_keys.dart';
import '../../../../../core/utils/services/token_service.dart';
import '../../domain/repo/auth_repo.dart';
import '../datasources/auth_api.dart';
import '../models/exchange_token_req_body_model.dart';

@Singleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final FirebaseAuth _fa;
  final AuthApi _api;
  final TokenService _tokenService;
  AuthRepoImpl(this._fa, this._api, this._tokenService);

  @override
  Future<ExecuteGuard<void>> checkFirebase() async {
    try {
      if (_fa.currentUser == null) {
        return const .failure(errorInfo: ErrorInfo(message: ''));
      }
      return const .success(data: null);
    } catch (e) {
      return .failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ExecuteGuard<void>> check() async {
    try {
      await _api.check();
      return const .success(data: null);
    } catch (e) {
      return .failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ExecuteGuard<void>> authToken() async {
    try {
      await _api
          .authToken(
            exchangeToken: ExchangeTokenReqBodyModel(
              idToken: await _tokenService.getIdToken(forceRefresh: true),
            ),
          )
          .then((result) async {
            await SharedPrefHelper.setSecuredString(
              key: SharedPrefKeys.jwtToken,
              value: result.token,
            );
            return const ExecuteGuard.success(data: null);
          });
      return const .success(data: null);
    } catch (e, st) {
      return .failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }

  @override
  Future<ExecuteGuard<void>> signOut() async {
    try {
      await _api.logout();
      await _fa.signOut();
      await SharedPrefHelper.clearAllSecuredData();
      await SharedPrefHelper.clearAllData();
      return const .success(data: null);
    } catch (e) {
      return .failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }
}

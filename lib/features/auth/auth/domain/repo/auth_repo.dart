import 'dart:async';

import '../../../../../core/networking/api_result.dart';
import '../../data/models/auth_res_model.dart';

abstract class AuthRepo {
  Future<bool> hasFirebaseUser();
  Future<ApiResult<bool>> check();
  Future<ApiResult<String>> getJwtToken();
  Future<ApiResult<AuthResModel>> exchangeIdTokenForJwt();
  Future<void> saveJwt(String jwt);
  Future<ApiResult<void>> signOut();
}

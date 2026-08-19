import 'dart:async';

import '../../../../../core/networking/api_result.dart';

abstract class AuthRepo {
  Future<ApiResult<void>> check();
  Future<ApiResult<void>> checkFirebase();
  Future<ApiResult<void>> authToken();
  Future<ApiResult<void>> signOut();
}

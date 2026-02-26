import 'dart:async';

import '../../../../../core/networking/api_result.dart';

abstract class AuthRepo {
  Future<ApiResult<bool>> check();
  Future<ApiResult<void>> signOut();
}

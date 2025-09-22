import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../models/auth_res_model.dart';

part 'auth_api.g.dart';

@injectable
@RestApi(
  baseUrl: ApiConstants.apiAuthBaseUrl,
)
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(Dio dio) = _AuthApi;
  @POST(
    ApiConstants.check,
  )
  Future<void> check();

  @POST(ApiConstants.refreshToken)
  Future<AuthResModel> exchangeIdTokenForJwt({
    @Body() required Map<String, dynamic> refreshData,
  });
  @POST(ApiConstants.logout)
  Future<void> logout();
}

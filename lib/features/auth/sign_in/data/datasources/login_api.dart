import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/login_req_body_model.dart';

part 'login_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiAuthBaseUrl,
)
abstract class LoginApi {
  factory LoginApi(
    Dio dio, {
    String baseUrl,
  }) = _LoginApi;

  @POST(
    ApiConstants.authToken,
  )
  Future<UserData> authToken({
    @Body() required LoginReqBodyModel loginReqBodyModel,
  });
}

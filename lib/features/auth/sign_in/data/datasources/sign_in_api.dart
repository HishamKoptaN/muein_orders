import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../models/sign_in_req_body_model.dart';
import '../models/token_res_model.dart';

part 'sign_in_api.g.dart';

@lazySingleton
@RestApi()
abstract class SignInApi {
  @factoryMethod
  factory SignInApi(@Named('authDio') Dio dio) = _SignInApi;

  @POST(ApiConstants.authToken)
  Future<TokenResModel> authToken(@Body() SignInReqBodyModel body);
}

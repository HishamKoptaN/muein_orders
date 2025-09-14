import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../../core/networking/api_constants.dart';
import '../mappers/sign_up_res_model.dart';
import '../mappers/sign_up_settings_res_model.dart';
import '../models/signup_req_model.dart';

part 'sign_up_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiAuthBaseUrl,
)
@lazySingleton
@injectable
abstract class SignUpApi {
  @factoryMethod
  factory SignUpApi(Dio dio) = _SignUpApi;

  @GET(ApiConstants.signup)
  Future<SignUpSettingsResModel> getCountries();

  @POST(ApiConstants.signup)
  Future<SignUpResModel> signUp({@Body() required SignUpReqModel signUpReq});
}

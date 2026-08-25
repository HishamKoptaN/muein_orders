import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../models/sign_up_req_model.dart';
part 'sign_up_api.g.dart';

@RestApi(headers: <String, dynamic>{'Content-Type': 'application/json'})
@lazySingleton
abstract class SignUpApi {
  @factoryMethod
  factory SignUpApi(@Named('authDio') Dio dio) = _SignUpApi;

  @POST('sign-up')
  Future<void> signUp(@Body() SignUpReqModel signUpReq);
}

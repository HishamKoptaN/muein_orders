import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'sign_in_api.g.dart';

@lazySingleton
@RestApi()
abstract class SignInApi {
  @factoryMethod
  factory SignInApi(@Named('authDio') Dio dio) = _SignInApi;
}

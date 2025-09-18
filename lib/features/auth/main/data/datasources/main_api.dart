import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../../../../../core/models/user_data.dart';
part 'main_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiAuthBaseUrl,
)
@injectable
abstract class MainApi {
  @factoryMethod
  factory MainApi(
    Dio dio, {
    String? baseUrl,
  }) = _MainApi;

  @POST(
    ApiConstants.check,
  )
  Future<UserData> check();
}

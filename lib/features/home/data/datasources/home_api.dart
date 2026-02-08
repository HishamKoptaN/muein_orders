import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/order_type_res_model.dart';

part 'home_api.g.dart';

@singleton
@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class HomeApi {
  @factoryMethod
  factory HomeApi(Dio dio) = _HomeApi;
  // ! Get
  @GET(ApiConstants.summary)
  Future<List<OrderTypeResModel>> getSummary();
}

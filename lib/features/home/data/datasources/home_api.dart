import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/stat_model.dart';

part 'home_api.g.dart';

@singleton
@RestApi()
abstract class HomeApi {
  @factoryMethod
  factory HomeApi(Dio dio) = _HomeApi;
  // ! Get
  @GET(ApiConstants.summary)
  Future<List<StatModel>> getSummary();
}

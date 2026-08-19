import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../models/stat_model.dart';

part 'stats_api.g.dart';

@singleton
@RestApi()
abstract class StatsApi {
  @factoryMethod
  factory StatsApi(Dio dio) = _StatsApi;
  //! Get
  @GET(ApiConstants.stats)
  Future<List<StatModel>> stats();
}

import '../../../../core/networking/api_result.dart';
import '../entities/order_type_res_entity.dart';

abstract class StatsRepo {
  Future<ApiResult<List<StatEntity>>> stats();
}

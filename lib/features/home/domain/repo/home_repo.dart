import '../../../../core/networking/api_result.dart';
import '../entities/order_type_res_entity.dart';

abstract class HomeRepo {
  Future<ApiResult<List<OrderTypeResEntity>>> getSummary();
}

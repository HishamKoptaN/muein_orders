import '../../../../../core/networking/api_result.dart';
import '../entities/orders_res_entity.dart';

abstract class OrdersRepo {
  Future<ApiResult<List<OrdersResEntity>?>> getOrders(
      {String? query, int? page});
  Future<ApiResult<OrderEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}

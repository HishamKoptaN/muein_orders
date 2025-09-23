import '../../../../../core/networking/api_result.dart';
import '../entities/orders_res_entity.dart';

abstract class OrdersRepo {
  Future<ApiResult<OrdersResEntity?>> getOrders({
    required int packageId,
    bool loadMore = false,
    bool? isDistributionPhotographed,
  });

  Future<ApiResult<OrderEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}

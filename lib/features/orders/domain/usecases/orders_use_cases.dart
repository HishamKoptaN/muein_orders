import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../entities/orders_res_entity.dart';
import '../repo/orders_repo.dart';

@singleton
class OrdersUseCases {
  final OrdersRepo ordersRepo;
  OrdersUseCases(this.ordersRepo);
  Future<ApiResult<OrdersResEntity?>> getOrders({
    required int productTypeId,
    String? query,
    bool loadMore = false,
    bool? isDistributionPhotographed,
  }) async {
    return await ordersRepo.getOrders(
      productTypeId: productTypeId,
      loadMore: loadMore,
      // isDistributionPhotographed: isDistributionPhotographed,
    );
  }

  Future<ApiResult<OrderEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  }) async {
    return await ordersRepo.updateClientField(
      clientId: clientId,
      isQuranPhotographed: isQuranPhotographed,
    );
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../entities/orders_res_entity.dart';
import '../repo/orders_repo.dart';

@singleton
class OrdersUseCases {
  final OrdersRepo ordersRepo;
  OrdersUseCases(this.ordersRepo);
  Future<ApiResult<OrdersResEntity?>> getOrders({
    required int subCategoryId,
    String? query,
    bool loadMore = false,
  }) async {
    return await ordersRepo.getOrders(
      subCategoryId: subCategoryId,
      loadMore: loadMore,
    );
  }
}

import '../../../../../core/networking/api_result.dart';
import '../entities/orders_res_entity.dart';

abstract class OrdersRepo {
  Future<ApiResult<OrdersResEntity?>> getOrders({
    required int subCategoryId,
    bool loadMore = false,
  });
}

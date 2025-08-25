import '../../../../../core/networking/api_result.dart';
import '../entities/orders_res_entity.dart';
import '../repo/orders_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrdersUseCases {
  final OrdersRepo ordersRepo;
  OrdersUseCases(
    this.ordersRepo,
  );
  Future<ApiResult<List<OrdersResEntity>?>> getOrders(
      {String? query, int? page}) async {
    return await ordersRepo.getOrders(query: query, page: page);
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

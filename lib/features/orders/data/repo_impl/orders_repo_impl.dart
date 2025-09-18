import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/error/api_error_handler.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/repo/orders_repo.dart';
import '../datasources/orders_api.dart';
import '../mappers/orders_res_mapper.dart';

@Injectable(
  as: OrdersRepo,
)
class OrdersRepoImpl implements OrdersRepo {
  final OrdersApi ordersApi;
  OrdersRepoImpl(
    this.ordersApi,
  );
  @override
  Future<ApiResult<List<OrdersResEntity>?>> getOrders(
      {String? query, int? page,}) async {
    try {
      final res = await ordersApi.getOrders(page: page, query: query);
      final result = res.map((e) => e.toEntity()).toList();
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }

  @override
  Future<ApiResult<OrderEntity?>> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  }) async {
    try {
      final res = await ordersApi.updateClientField(
        clientId: clientId,
        isQuranPhotographed: isQuranPhotographed,
      );
      final result = res.toEntity();
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/repo/orders_repo.dart';
import '../datasources/orders_api.dart';
import '../mappers/orders_res_mapper.dart';

@Singleton(as: OrdersRepo)
class OrdersRepoImpl implements OrdersRepo {
  final OrdersApi ordersApi;
  OrdersRepoImpl(this.ordersApi);
  OrdersResEntity? _cachedResOrders;

  @override
  Future<ApiResult<OrdersResEntity?>> getOrders({
    required int subCategoryId,
    String? query,
    bool loadMore = false,
    bool? isDistributionPhotographed,
  }) async {
    try {
      int page = 1;
      if (loadMore && _cachedResOrders != null) {
        _cachedResOrders!.maybeWhen(
          orders: (orders, meta) => page = (meta.currentPage ?? 0) + 1,
          orElse: () => page = 1,
        );
      }
      final res = await ordersApi.getOrders(
        subCategoryId: subCategoryId,
        page: page,
        query: query,
      );
      final newEntity = res.toEntity();
      if (loadMore && _cachedResOrders != null) {
        _cachedResOrders = _cachedResOrders!.map(
          orders: (currentPaginated) {
            return newEntity.maybeWhen(
              orders: (newOrders, newMeta) => currentPaginated.copyWith(
                orders: [...currentPaginated.orders, ...newOrders],
                meta: newMeta,
              ),
              orElse: () => newEntity,
            );
          },
          individualDocs: (_) => newEntity,
        );
      } else {
        _cachedResOrders = newEntity;
      }
      return ApiResult.success(data: _cachedResOrders);
    } catch (error, stackTrace) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}

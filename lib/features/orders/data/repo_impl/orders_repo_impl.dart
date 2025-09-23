import 'dart:developer' as developer;

import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/error/api_error_handler.dart';
import '../../../../core/mapper/meta_mapper.dart';
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
  OrdersResEntity? _cachedResOrders;

  @override
  @override
  Future<ApiResult<OrdersResEntity?>> getOrders({
    required int packageId,
    String? query,
    bool loadMore = false,
    bool? isDistributionPhotographed,
  }) async {
    try {
      final res = await ordersApi.getOrders(
        packageId: packageId,
        page: !loadMore ? 1 : (_cachedResOrders?.meta?.currentPage ?? 0) + 1,
        query: query,
        isDistributionPhotographed: isDistributionPhotographed,
      );
      final orders = res.orders!.map(
        (model) {
          try {
            return model.toEntity();
          } catch (e, stackTrace) {
            developer.log(
              'Error converting model to entity',
              error: e,
              stackTrace: stackTrace,
            );
            throw FormatException(
              'Failed to convert model to entity: ${e.toString()}',
            );
          }
        },
      ).toList();
      if (loadMore && _cachedResOrders != null) {
        _cachedResOrders!.orders!.addAll(orders);
      } else {
        _cachedResOrders = OrdersResEntity(
          orders: orders,
          meta: res.meta?.toEntity(),
        );
      }
      return ApiResult.success(
        data: _cachedResOrders,
      );
    } catch (error, stackTrace) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
          stackTrace: stackTrace,
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
      return const ApiResult.success(
        data: null,
        // data: OrdersResEntity(
        //   orders: [result],
        //   meta: res.meta?.toEntity(),
        // ),
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

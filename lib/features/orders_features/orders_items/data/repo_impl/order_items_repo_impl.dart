import 'dart:async';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/handlers/api_error_handler/error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/entities/order_items_res_entity.dart';
import '../../domain/repo/order_items_repo.dart';
import '../datasources/order_items_api.dart';
import '../mappers/order_items_res_mapper.dart';

@Singleton(as: OrderItemsRepo)
class OrdersRepoImpl implements OrderItemsRepo {
  final OrderItemsApi _api;
  OrdersRepoImpl(this._api);

  @override
  Future<ApiResult<OrderItemsResEntity>> get({
    required int subCategoryId,
  }) async {
    return _api
        .get(subCategoryId: subCategoryId)
        .then((res) {
          return ApiResult.success(data: res.toEntity());
        })
        .catchError((error) {
          return ApiResult.failure(
            errorInfo: ErrorHandler.handle(error: error),
          );
        });
  }
}

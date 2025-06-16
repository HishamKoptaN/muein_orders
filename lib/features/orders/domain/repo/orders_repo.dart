import 'package:dio/dio.dart';
import '../../../../../core/networking/api_result.dart';
import '../../data/models/orders_res_model.dart';
import '../entities/add_order_req.dart';

abstract class OrdersRepo {
  Future<ApiResult<OrdersResModel?>> getOrders({required int page});
  Future<ApiResult<Order?>> createOrder({
    required AddOrderReq addOrderReq,
    required ProgressCallback? onSendProgress,
  });
}

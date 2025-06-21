import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/orders_res_model.dart';
part 'orders_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class OrdersApi {
  factory OrdersApi(
    Dio dio, {
    String? baseUrl,
  }) = _OrdersApi;
  // ! Get
  @GET(
    ApiConstants.orders,
  )
  Future<List<OrdersResModel>> getOrders({
    @Query("page") int? page,
    @Query("query") String? query,
  });
  // ! updateClientField
  @POST(
    ApiConstants.orders,
  )
  Future<Order?> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show injectable, factoryMethod;
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/orders_res_model.dart';

part 'orders_api.g.dart';

@injectable
@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class OrdersApi {
  @factoryMethod
  factory OrdersApi(
    Dio dio,
  ) = _OrdersApi;
  // ! Get
  @GET(
    ApiConstants.orders,
  )
  Future<List<OrdersResModel>> getOrders({
    @Query('page') int? page,
    @Query('query') String? query,
  });
  // ! updateClientField
  @POST(
    ApiConstants.orders,
  )
  Future<Order> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}

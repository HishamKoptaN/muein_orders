import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/orders_res_model.dart';

part 'orders_api.g.dart';

@singleton
@RestApi()
abstract class OrdersApi {
  @factoryMethod
  factory OrdersApi(Dio dio) = _OrdersApi;
  // ! Get orders for a specific package
  @GET(ApiConstants.orders)
  Future<OrdersResModel> getOrders({
    @Query('page') int? page,
    @Query('sub_category_id') required int subCategoryId,
    @Query('query') String? query,
    // @Query('is_distribution_photographed') bool? isDistributionPhotographed,
  });
  // ! updateClientField
  @POST(ApiConstants.orders)
  Future<OrderModel> updateClientField({
    required int clientId,
    required bool isQuranPhotographed,
  });
}

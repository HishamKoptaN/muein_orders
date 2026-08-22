import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/api_constants.dart';
import '../models/order_items_res_model.dart';

part 'order_items_api.g.dart';

@singleton
@RestApi()
abstract class OrderItemsApi {
  @factoryMethod
  factory OrderItemsApi(Dio dio) = _OrderItemsApi;
  // ! Get
  @GET(ApiConstants.orderItems)
  Future<SallaOrderItemsResModel> get({
    @Query('page') int? page,
    @Query('sub_category_id') required int subCategoryId,
  });
}

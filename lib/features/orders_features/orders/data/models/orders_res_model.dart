import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta_model.dart';
import '../../../docs/data/models/docs_res_model.dart';
import '../../../salla_orders_items/data/models/order_items_res_model.dart';
import 'order_status_model.dart';

part 'orders_res_model.freezed.dart';
part 'orders_res_model.g.dart';

@freezed
abstract class OrdersResModel with _$OrdersResModel {
  const factory OrdersResModel({
    @JsonKey(name: 'orders') List<OrderModel>? orders,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = OrdersResponse;

  factory OrdersResModel.fromJson(Map<String, Object?> json) =>
      _$OrdersResModelFromJson(json);
}

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'salla_order_id') int? sallaOrderId,
    @JsonKey(name: 'salla_product_id') int? sallaProductId,
    @JsonKey(name: 'salla_order_items')
    List<SallaOrderItemModel>? sallaOrderItems,
    @JsonKey(name: 'salla_order_status') OrderStatusModel? sallaOrderStatus,
    @JsonKey(name: 'execution_number') String? executionNumber,
    @JsonKey(name: 'docs') List<DocModel>? docs,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);
}

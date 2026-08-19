// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) =>
    OrdersResponse(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResponseToJson(OrdersResponse instance) =>
    <String, dynamic>{
      'orders': ?instance.orders?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt(),
  sallaOrderId: (json['salla_order_id'] as num?)?.toInt(),
  sallaProductId: (json['salla_product_id'] as num?)?.toInt(),
  sallaOrderItems: (json['salla_order_items'] as List<dynamic>?)
      ?.map((e) => SallaOrderItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  sallaOrderStatus: json['salla_order_status'] == null
      ? null
      : OrderStatusModel.fromJson(
          json['salla_order_status'] as Map<String, dynamic>,
        ),
  executionNumber: json['execution_number'] as String?,
  docs: (json['docs'] as List<dynamic>?)
      ?.map((e) => DocModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'salla_order_id': ?instance.sallaOrderId,
      'salla_product_id': ?instance.sallaProductId,
      'salla_order_items': ?instance.sallaOrderItems
          ?.map((e) => e.toJson())
          .toList(),
      'salla_order_status': ?instance.sallaOrderStatus?.toJson(),
      'execution_number': ?instance.executionNumber,
      'docs': ?instance.docs?.map((e) => e.toJson()).toList(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersResModel _$OrdersResModelFromJson(Map<String, dynamic> json) =>
    _OrdersResModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResModelToJson(_OrdersResModel instance) =>
    <String, dynamic>{
      'orders': ?instance.orders?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt(),
  sallaOrderId: (json['salla_order_id'] as num?)?.toInt(),
  sallaProductId: (json['salla_product_id'] as num?)?.toInt(),
  printedName: json['printed_name'] as String?,
  docs: (json['docs'] as List<dynamic>?)
      ?.map((e) => DocModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'salla_order_id': ?instance.sallaOrderId,
      'salla_product_id': ?instance.sallaProductId,
      'printed_name': ?instance.printedName,
      'docs': ?instance.docs?.map((e) => e.toJson()).toList(),
    };

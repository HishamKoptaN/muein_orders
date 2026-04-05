// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt(),
  sallaOrderId: (json['salla_order_id'] as num?)?.toInt(),
  sallaProductId: (json['salla_product_id'] as num?)?.toInt(),
  printedName: json['printed_name'] as String?,
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
      'printed_name': ?instance.printedName,
      'execution_number': ?instance.executionNumber,
      'docs': ?instance.docs?.map((e) => e.toJson()).toList(),
    };

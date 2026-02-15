// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersResEntity _$OrdersResEntityFromJson(Map<String, dynamic> json) =>
    _OrdersResEntity(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResEntityToJson(_OrdersResEntity instance) =>
    <String, dynamic>{
      'orders': ?instance.orders?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) => _OrderEntity(
  id: (json['id'] as num?)?.toInt(),
  printedName: json['printed_name'] as String?,
  sallaOrderId: json['salla_order_id'] as String?,
  isQuranPhotographed: json['is_quran_photographed'] as bool?,
  isDistributionPhotographed: json['is_distribution_photographed'] as bool?,
);

Map<String, dynamic> _$OrderEntityToJson(_OrderEntity instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'printed_name': ?instance.printedName,
      'salla_order_id': ?instance.sallaOrderId,
      'is_quran_photographed': ?instance.isQuranPhotographed,
      'is_distribution_photographed': ?instance.isDistributionPhotographed,
    };

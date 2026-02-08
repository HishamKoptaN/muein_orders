// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderTypeResModel _$OrderTypeResModelFromJson(Map<String, dynamic> json) =>
    _OrderTypeResModel(
      productType: json['product_type'] == null
          ? null
          : ProductTypeModel.fromJson(
              json['product_type'] as Map<String, dynamic>,
            ),
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalQuranCopies: (json['total_quran_copies'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderTypeResModelToJson(_OrderTypeResModel instance) =>
    <String, dynamic>{
      'product_type': ?instance.productType?.toJson(),
      'orders_count': ?instance.ordersCount,
      'total_quran_copies': ?instance.totalQuranCopies,
    };

_ProductTypeModel _$ProductTypeModelFromJson(Map<String, dynamic> json) =>
    _ProductTypeModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      docsCount: (json['docs_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductTypeModelToJson(_ProductTypeModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'docs_count': ?instance.docsCount,
    };

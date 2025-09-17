// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageEntityImpl _$$PackageEntityImplFromJson(Map<String, dynamic> json) =>
    _$PackageEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalAmount: json['total_amount'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PackageEntityImplToJson(_$PackageEntityImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.price case final value?) 'price': value,
      if (instance.image case final value?) 'image': value,
      if (instance.ordersCount case final value?) 'orders_count': value,
      if (instance.totalAmount case final value?) 'total_amount': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

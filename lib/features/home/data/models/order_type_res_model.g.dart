// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderTypeResModelImpl _$$OrderTypeResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderTypeResModelImpl(
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalQuranCopies: (json['total_quran_copies'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderTypeResModelImplToJson(
        _$OrderTypeResModelImpl instance) =>
    <String, dynamic>{
      if (instance.package?.toJson() case final value?) 'package': value,
      if (instance.ordersCount case final value?) 'orders_count': value,
      if (instance.totalQuranCopies case final value?)
        'total_quran_copies': value,
    };

_$PackageImpl _$$PackageImplFromJson(Map<String, dynamic> json) =>
    _$PackageImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      image: json['image'] as String?,
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageImplToJson(_$PackageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.image case final value?) 'image': value,
      if (instance.type?.toJson() case final value?) 'type': value,
    };

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
    };

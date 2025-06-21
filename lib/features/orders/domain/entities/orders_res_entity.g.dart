// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResEntityImpl _$$OrdersResEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersResEntityImpl(
      package: json['package'] == null
          ? null
          : PackageEntity.fromJson(json['package'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersResEntityImplToJson(
        _$OrdersResEntityImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'orders': instance.orders,
    };

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      printedName: json['printedName'] as String?,
      countryCode: json['countryCode'],
      status: json['status'] as bool?,
      createdAt: json['createdAt'] as String?,
      executionNum: json['executionNum'] as String?,
      orderNum: json['orderNum'] as String?,
      package: json['package'] == null
          ? null
          : OrderPackageEntity.fromJson(
              json['package'] as Map<String, dynamic>),
      cartonCount: (json['cartonCount'] as num?)?.toInt(),
      ordersCount: (json['ordersCount'] as num?)?.toInt(),
      totalAmount: json['totalAmount'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      days: (json['days'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      isQuranPrinted: json['isQuranPrinted'] as bool?,
      isQuranPhotographed: json['isQuranPhotographed'] as bool?,
      isDistributionPhotographed: json['isDistributionPhotographed'] as bool?,
      isLocationReceived: json['isLocationReceived'] as bool?,
      locationLink: json['locationLink'],
      isFinalReportReady: json['isFinalReportReady'] as bool?,
      isReportSent: json['isReportSent'] as bool?,
      stickerPrepared: json['stickerPrepared'] as bool?,
      videosUploaded: json['videosUploaded'] as bool?,
      finalEstimateReady: json['finalEstimateReady'] as bool?,
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'printedName': instance.printedName,
      'countryCode': instance.countryCode,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'executionNum': instance.executionNum,
      'orderNum': instance.orderNum,
      'package': instance.package,
      'cartonCount': instance.cartonCount,
      'ordersCount': instance.ordersCount,
      'totalAmount': instance.totalAmount,
      'date': instance.date?.toIso8601String(),
      'days': instance.days,
      'email': instance.email,
      'phone': instance.phone,
      'isQuranPrinted': instance.isQuranPrinted,
      'isQuranPhotographed': instance.isQuranPhotographed,
      'isDistributionPhotographed': instance.isDistributionPhotographed,
      'isLocationReceived': instance.isLocationReceived,
      'locationLink': instance.locationLink,
      'isFinalReportReady': instance.isFinalReportReady,
      'isReportSent': instance.isReportSent,
      'stickerPrepared': instance.stickerPrepared,
      'videosUploaded': instance.videosUploaded,
      'finalEstimateReady': instance.finalEstimateReady,
    };

_$OrderPackageEntityImpl _$$OrderPackageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPackageEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderPackageEntityImplToJson(
        _$OrderPackageEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'quantity': instance.quantity,
    };

_$PackageEntityImpl _$$PackageEntityImplFromJson(Map<String, dynamic> json) =>
    _$PackageEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PackageEntityImplToJson(_$PackageEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
    };

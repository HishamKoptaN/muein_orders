// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResModelImpl _$$OrdersResModelImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResModelImpl(
      package: json['package'] == null
          ? null
          : OrdersResModelPackage.fromJson(
              json['package'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersResModelImplToJson(
        _$OrdersResModelImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'orders': instance.orders,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      printedName: json['printed_name'] as String?,
      countryCode: json['country_code'],
      status: json['status'] as bool?,
      createdAt: json['created_at'] as String?,
      executionNum: json['execution_num'] as String?,
      orderNum: json['order_num'] as String?,
      package: json['package'] == null
          ? null
          : OrderPackage.fromJson(json['package'] as Map<String, dynamic>),
      cartonCount: (json['carton_count'] as num?)?.toInt(),
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalAmount: json['total_amount'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      days: (json['days'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      isQuranPrinted: json['is_quran_printed'] as bool?,
      isQuranPhotographed: json['is_quran_photographed'] as bool?,
      isDistributionPhotographed: json['is_distribution_photographed'] as bool?,
      isLocationReceived: json['is_location_received'] as bool?,
      locationLink: json['location_link'],
      isFinalReportReady: json['is_final_report_ready'] as bool?,
      isReportSent: json['is_report_sent'] as bool?,
      stickerPrepared: json['sticker_prepared'] as bool?,
      videosUploaded: json['videos_uploaded'] as bool?,
      finalEstimateReady: json['final_estimate_ready'] as bool?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'printed_name': instance.printedName,
      'country_code': instance.countryCode,
      'status': instance.status,
      'created_at': instance.createdAt,
      'execution_num': instance.executionNum,
      'order_num': instance.orderNum,
      'package': instance.package,
      'carton_count': instance.cartonCount,
      'orders_count': instance.ordersCount,
      'total_amount': instance.totalAmount,
      'date': instance.date?.toIso8601String(),
      'days': instance.days,
      'email': instance.email,
      'phone': instance.phone,
      'is_quran_printed': instance.isQuranPrinted,
      'is_quran_photographed': instance.isQuranPhotographed,
      'is_distribution_photographed': instance.isDistributionPhotographed,
      'is_location_received': instance.isLocationReceived,
      'location_link': instance.locationLink,
      'is_final_report_ready': instance.isFinalReportReady,
      'is_report_sent': instance.isReportSent,
      'sticker_prepared': instance.stickerPrepared,
      'videos_uploaded': instance.videosUploaded,
      'final_estimate_ready': instance.finalEstimateReady,
    };

_$OrderPackageImpl _$$OrderPackageImplFromJson(Map<String, dynamic> json) =>
    _$OrderPackageImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderPackageImplToJson(_$OrderPackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'quantity': instance.quantity,
    };

_$OrdersResModelPackageImpl _$$OrdersResModelPackageImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersResModelPackageImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrdersResModelPackageImplToJson(
        _$OrdersResModelPackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
    };

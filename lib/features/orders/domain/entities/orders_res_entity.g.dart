// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResEntityImpl _$$OrdersResEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersResEntityImpl(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrdersResEntityImplToJson(
        _$OrdersResEntityImpl instance) =>
    <String, dynamic>{
      if (instance.orders?.map((e) => e.toJson()).toList() case final value?)
        'orders': value,
      if (instance.meta?.toJson() case final value?) 'meta': value,
    };

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      name: json['name'] as String?,
      printedName: json['printed_name'] as String?,
      phone: json['phone'] as String?,
      status: (json['status'] as num?)?.toInt(),
      stickerPrepared: json['sticker_prepared'] as bool?,
      videosUploaded: json['videos_uploaded'] as bool?,
      finalEstimateReady: json['final_estimate_ready'] as bool?,
      email: json['email'] as String?,
      executionNum: json['execution_num'] as String?,
      orderNum: json['order_num'] as String?,
      cartonCount: (json['carton_count'] as num?)?.toInt(),
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      totalAmount: json['total_amount'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      isQuranPrinted: json['is_quran_printed'] as bool?,
      isQuranPhotographed: json['is_quran_photographed'] as bool?,
      isDistributionPhotographed: json['is_distribution_photographed'] as bool?,
      isLocationReceived: json['is_location_received'] as bool?,
      locationLink: json['location_link'],
      isFinalReportReady: json['is_final_report_ready'] as bool?,
      isReportSent: json['is_report_sent'] as bool?,
      originCountryId: (json['origin_country_id'] as num?)?.toInt(),
      distributionCountryId: (json['distribution_country_id'] as num?)?.toInt(),
      packageId: (json['package_id'] as num?)?.toInt(),
      quranCopiesCount: (json['quran_copies_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.name case final value?) 'name': value,
      if (instance.printedName case final value?) 'printed_name': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.status case final value?) 'status': value,
      if (instance.stickerPrepared case final value?) 'sticker_prepared': value,
      if (instance.videosUploaded case final value?) 'videos_uploaded': value,
      if (instance.finalEstimateReady case final value?)
        'final_estimate_ready': value,
      if (instance.email case final value?) 'email': value,
      if (instance.executionNum case final value?) 'execution_num': value,
      if (instance.orderNum case final value?) 'order_num': value,
      if (instance.cartonCount case final value?) 'carton_count': value,
      if (instance.ordersCount case final value?) 'orders_count': value,
      if (instance.totalAmount case final value?) 'total_amount': value,
      if (instance.date?.toIso8601String() case final value?) 'date': value,
      if (instance.isQuranPrinted case final value?) 'is_quran_printed': value,
      if (instance.isQuranPhotographed case final value?)
        'is_quran_photographed': value,
      if (instance.isDistributionPhotographed case final value?)
        'is_distribution_photographed': value,
      if (instance.isLocationReceived case final value?)
        'is_location_received': value,
      if (instance.locationLink case final value?) 'location_link': value,
      if (instance.isFinalReportReady case final value?)
        'is_final_report_ready': value,
      if (instance.isReportSent case final value?) 'is_report_sent': value,
      if (instance.originCountryId case final value?)
        'origin_country_id': value,
      if (instance.distributionCountryId case final value?)
        'distribution_country_id': value,
      if (instance.packageId case final value?) 'package_id': value,
      if (instance.quranCopiesCount case final value?)
        'quran_copies_count': value,
    };

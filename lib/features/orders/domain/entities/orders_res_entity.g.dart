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
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
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

Map<String, dynamic> _$OrderEntityToJson(_OrderEntity instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'created_at': ?instance.createdAt,
      'updated_at': ?instance.updatedAt,
      'name': ?instance.name,
      'printed_name': ?instance.printedName,
      'phone': ?instance.phone,
      'status': ?instance.status,
      'sticker_prepared': ?instance.stickerPrepared,
      'videos_uploaded': ?instance.videosUploaded,
      'final_estimate_ready': ?instance.finalEstimateReady,
      'email': ?instance.email,
      'execution_num': ?instance.executionNum,
      'order_num': ?instance.orderNum,
      'carton_count': ?instance.cartonCount,
      'orders_count': ?instance.ordersCount,
      'total_amount': ?instance.totalAmount,
      'date': ?instance.date?.toIso8601String(),
      'is_quran_printed': ?instance.isQuranPrinted,
      'is_quran_photographed': ?instance.isQuranPhotographed,
      'is_distribution_photographed': ?instance.isDistributionPhotographed,
      'is_location_received': ?instance.isLocationReceived,
      'location_link': ?instance.locationLink,
      'is_final_report_ready': ?instance.isFinalReportReady,
      'is_report_sent': ?instance.isReportSent,
      'origin_country_id': ?instance.originCountryId,
      'distribution_country_id': ?instance.distributionCountryId,
      'package_id': ?instance.packageId,
      'quran_copies_count': ?instance.quranCopiesCount,
    };

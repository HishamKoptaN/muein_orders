import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entity.dart';

part 'orders_res_entity.freezed.dart';
part 'orders_res_entity.g.dart';

@freezed
class OrdersResEntity with _$OrdersResEntity {
  const factory OrdersResEntity({
    @JsonKey(name: 'package') PackageEntity? package,
    @JsonKey(name: 'orders') List<OrderEntity>? orders,
  }) = _OrdersResEntity;

  factory OrdersResEntity.fromJson(Map<String, dynamic> json) =>
      _$OrdersResEntityFromJson(json);
}

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'country_code') dynamic countryCode,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'execution_num') String? executionNum,
    @JsonKey(name: 'order_num') String? orderNum,
    @JsonKey(name: 'package') PackageEntity? package,
    @JsonKey(name: 'carton_count') int? cartonCount,
    @JsonKey(name: 'orders_count') int? ordersCount,
    @JsonKey(name: 'total_amount') String? totalAmount,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'days') int? days,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'is_quran_printed') bool? isQuranPrinted,
    @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
    @JsonKey(name: 'is_distribution_photographed')
    bool? isDistributionPhotographed,
    @JsonKey(name: 'is_location_received') bool? isLocationReceived,
    @JsonKey(name: 'location_link') dynamic locationLink,
    @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
    @JsonKey(name: 'is_report_sent') bool? isReportSent,
    @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
    @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
    @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}

enum DocUploadStatus { notStarted, uploading, success, failed }

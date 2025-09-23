import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta.dart';

part 'orders_res_model.freezed.dart';
part 'orders_res_model.g.dart';

@freezed
class OrdersResModel with _$OrdersResModel {
  const factory OrdersResModel({
    @JsonKey(name: 'orders') List<Order>? orders,
    @JsonKey(name: 'meta') Meta? meta,
  }) = _OrdersResModel;

  factory OrdersResModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersResModelFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'execution_num') String? executionNum,
    @JsonKey(name: 'order_num') String? orderNum,
    @JsonKey(name: 'docs') List<dynamic>? docs,
    @JsonKey(name: 'package') Package? package,
    @JsonKey(name: 'distribution_country')
    DistributionCountry? distributionCountry,
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
    @JsonKey(name: 'location_link') bool? locationLink,
    @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
    @JsonKey(name: 'is_report_sent') bool? isReportSent,
    @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
    @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
    @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class DistributionCountry with _$DistributionCountry {
  const factory DistributionCountry({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'code') String? code,
  }) = _DistributionCountry;

  factory DistributionCountry.fromJson(Map<String, dynamic> json) =>
      _$DistributionCountryFromJson(json);
}

@freezed
class Package with _$Package {
  const factory Package({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'type') dynamic type,
    @JsonKey(name: 'quantity') int? quantity,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_res_model.freezed.dart';
part 'orders_res_model.g.dart';

@freezed
abstract class OrdersResModel with _$OrdersResModel {
  const factory OrdersResModel({
    @JsonKey(name: 'package') OrdersResModelPackage? package,
    @JsonKey(name: 'orders') List<Order>? orders,
  }) = _OrdersResModel;

  factory OrdersResModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersResModelFromJson(json);
}

@freezed
abstract class Order with _$Order {
  const factory Order({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'execution_num') String? executionNum,
    @JsonKey(name: 'order_num') String? orderNum,
    @JsonKey(name: 'package') OrderPackage? package,
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
    @JsonKey(name: 'location_link') String? locationLink,
    @JsonKey(name: 'is_final_report_ready') bool? isFinalReportReady,
    @JsonKey(name: 'is_report_sent') bool? isReportSent,
    @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
    @JsonKey(name: 'videos_uploaded') bool? videosUploaded,
    @JsonKey(name: 'final_estimate_ready') bool? finalEstimateReady,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
abstract class OrderPackage with _$OrderPackage {
  const factory OrderPackage({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _OrderPackage;

  factory OrderPackage.fromJson(Map<String, dynamic> json) =>
      _$OrderPackageFromJson(json);
}

@freezed
abstract class OrdersResModelPackage with _$OrdersResModelPackage {
  const factory OrdersResModelPackage({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'orders_count') int? ordersCount,
    @JsonKey(name: 'total_amount') String? totalAmount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _OrdersResModelPackage;

  factory OrdersResModelPackage.fromJson(Map<String, dynamic> json) =>
      _$OrdersResModelPackageFromJson(json);
}

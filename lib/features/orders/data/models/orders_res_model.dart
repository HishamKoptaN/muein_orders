import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta_model.dart';

part 'orders_res_model.freezed.dart';
part 'orders_res_model.g.dart';

@freezed
abstract class OrdersResModel with _$OrdersResModel {
  const factory OrdersResModel({
    @JsonKey(name: 'orders') List<Order>? orders,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _OrdersResModel;

  factory OrdersResModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersResModelFromJson(json);
}

@freezed
abstract class Order with _$Order {
  const factory Order({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'docs') List<dynamic>? docs,
    @JsonKey(name: 'distribution_country')
    DistributionCountry? distributionCountry,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'days') int? days,
    @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
    @JsonKey(name: 'is_distribution_photographed')
    bool? isDistributionPhotographed,
    @JsonKey(name: 'sticker_prepared') bool? stickerPrepared,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
abstract class DistributionCountry with _$DistributionCountry {
  const factory DistributionCountry({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'code') String? code,
  }) = _DistributionCountry;

  factory DistributionCountry.fromJson(Map<String, dynamic> json) =>
      _$DistributionCountryFromJson(json);
}

@freezed
abstract class Package with _$Package {
  const factory Package({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'type') dynamic type,
    @JsonKey(name: 'quantity') int? quantity,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}

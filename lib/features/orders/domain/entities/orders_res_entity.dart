import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/meta_entity.dart';

part 'orders_res_entity.freezed.dart';
part 'orders_res_entity.g.dart';

@freezed
abstract class OrdersResEntity with _$OrdersResEntity {
  const factory OrdersResEntity({
    required List<OrderEntity>? orders,
    required MetaEntity? meta,
  }) = _OrdersResEntity;
  factory OrdersResEntity.fromJson(Map<String, dynamic> json) =>
      _$OrdersResEntityFromJson(json);
}

@freezed
abstract class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'salla_order_id') String? sallaOrderId,
    @JsonKey(name: 'is_quran_photographed') bool? isQuranPhotographed,
    @JsonKey(name: 'is_distribution_photographed')
    bool? isDistributionPhotographed,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}

enum DocUploadStatus { notStarted, uploading, success, failed }

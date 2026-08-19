import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/meta_model.dart';
import '../../../docs/data/models/docs_res_model.dart';
part 'order_items_res_model.freezed.dart';
part 'order_items_res_model.g.dart';

@freezed
abstract class SallaOrderItemsResModel with _$SallaOrderItemsResModel {
  const factory SallaOrderItemsResModel({
    @JsonKey(name: 'data') List<SallaOrderItemModel>? items,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _SallaOrderItemsResModel;
  factory SallaOrderItemsResModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemsResModelFromJson(json);
}

@freezed
abstract class SallaOrderItemModel with _$SallaOrderItemModel {
  const factory SallaOrderItemModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'printed_name') String? printedName,
    @JsonKey(name: 'salla_order_item_units')
    List<SallaOrderItemUnitModel>? sallaOrderItemUnits,
    @JsonKey(name: 'created_at') String? created_at,
    @JsonKey(name: 'updated_at') String? updated_at,
  }) = _SallaOrderItemModel;
  factory SallaOrderItemModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemModelFromJson(json);
}

@freezed
abstract class SallaOrderItemUnitModel with _$SallaOrderItemUnitModel {
  const factory SallaOrderItemUnitModel({
    @Default(0) int id,
    @JsonKey(name: 'unit_number') @Default(0) int unitNumber,
    @Default('') @JsonKey(name: 'execution_number') String executionNumber,
    @Default([]) @JsonKey(name: 'documentations') List<DocModel> docs,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _SallaOrderItemUnitModel;
  factory SallaOrderItemUnitModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemUnitModelFromJson(json);
}

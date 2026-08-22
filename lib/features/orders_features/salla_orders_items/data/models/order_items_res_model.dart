import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/meta_model.dart';
import '../../../docs/data/models/docs_res_model.dart';
part 'order_items_res_model.freezed.dart';
part 'order_items_res_model.g.dart';

@freezed
abstract class SallaOrderItemsResModel with _$SallaOrderItemsResModel {
  const factory SallaOrderItemsResModel({
    @Default([])
    @JsonKey(name: 'data')
    List<SallaOrderItemModel> sallaOrderItems,
    @Default(MetaModel()) @JsonKey(name: 'meta') MetaModel meta,
  }) = _SallaOrderItemsResModel;
  factory SallaOrderItemsResModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemsResModelFromJson(json);
}

@freezed
abstract class SallaOrderItemModel with _$SallaOrderItemModel {
  const factory SallaOrderItemModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'printed_name') String printedName,
    @Default([])
    @JsonKey(name: 'salla_order_item_units')
    List<SallaOrderItemUnitModel> sallaOrderItemUnits,
    @Default(SallaOrderItemStatusModel())
    @JsonKey(name: 'salla_order_item_status')
    SallaOrderItemStatusModel sallaOrderItemStatus,
    @Default('') @JsonKey(name: 'created_at') String created_at,
    @Default('') @JsonKey(name: 'updated_at') String updated_at,
  }) = _SallaOrderItemModel;
  factory SallaOrderItemModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemModelFromJson(json);
}

@freezed
abstract class SallaOrderItemStatusModel with _$SallaOrderItemStatusModel {
  const factory SallaOrderItemStatusModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'created_at') String created_at,
    @Default('') @JsonKey(name: 'updated_at') String updated_at,
  }) = _SallaOrderItemStatusModel;
  factory SallaOrderItemStatusModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemStatusModelFromJson(json);
}

@freezed
abstract class SallaOrderItemUnitModel with _$SallaOrderItemUnitModel {
  const factory SallaOrderItemUnitModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default(0) @JsonKey(name: 'unit_number') int unitNumber,
    @Default('') @JsonKey(name: 'execution_number') String executionNumber,
    @Default([]) @JsonKey(name: 'documentations') List<DocModel> docs,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _SallaOrderItemUnitModel;
  factory SallaOrderItemUnitModel.fromJson(Map<String, Object?> json) =>
      _$SallaOrderItemUnitModelFromJson(json);
}

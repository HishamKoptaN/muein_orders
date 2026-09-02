import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../orders_features/salla_orders_items/domain/entities/salla_order_items_res_entity.dart';

part 'order_type_res_entity.freezed.dart';

@freezed
abstract class StatEntity with _$StatEntity {
  const factory StatEntity({
    @Default(0) int id,
    @Default(0) int docsCount,
    SubCategoryEntity? subCategory,
    SallaOrderItemUnitEntity? doc,
  }) = _StatEntity;
}

@freezed
abstract class SubCategoryEntity with _$SubCategoryEntity {
  const factory SubCategoryEntity({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
  }) = _SubCategoryEntity;
}

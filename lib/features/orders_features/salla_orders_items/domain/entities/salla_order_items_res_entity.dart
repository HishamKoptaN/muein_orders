import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../../docs/domain/entities/doc_entity.dart';
part 'salla_order_items_res_entity.freezed.dart';

@freezed
abstract class SallaOrderItemsResEntity with _$SallaOrderItemsResEntity {
  const factory SallaOrderItemsResEntity({
    @Default([]) List<SallaOrderItemEntity> sallaOrderItems,
    @Default(MetaEntity()) MetaEntity meta,
  }) = _SallaOrderItemsResEntity;
}

@freezed
abstract class SallaOrderItemEntity with _$SallaOrderItemEntity {
  const factory SallaOrderItemEntity({
    @Default(0) int id,
    @Default('') String printedName,
    @Default([]) List<SallaOrderItemUnitEntity> sallaOrderItemUnits,
    @Default(SallaOrderItemStatusEntity())
    SallaOrderItemStatusEntity sallaOrderItemStatus,
  }) = _SallaOrderItemEntity;
}

@freezed
abstract class SallaOrderItemStatusEntity with _$SallaOrderItemStatusEntity {
  const factory SallaOrderItemStatusEntity({@Default('') String name}) =
      _SallaOrderItemStatusEntity;
}

@freezed
abstract class SallaOrderItemUnitEntity with _$SallaOrderItemUnitEntity {
  const factory SallaOrderItemUnitEntity({
    @Default(0) int id,
    @Default(0) int itemId,
    @Default('') String executionNumber,
    @Default(0) int unitNumber,
    @Default([]) List<DocEntity> docs,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _SallaOrderItemUnitEntity;
}

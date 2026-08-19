import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/mapper/meta_mapper.dart';
import '../../../docs/data/mapper/docs_mapper.dart';
import '../../domain/entities/order_items_res_entity.dart';
import '../models/order_items_res_model.dart';

extension OrderItemssResModelMapper on SallaOrderItemsResModel {
  OrderItemsResEntity toEntity() {
    return OrderItemsResEntity(
      items:
          items?.map((m) {
            return m.toEntity();
          }).toList() ??
          const [],
      meta: meta?.toEntity() ?? const MetaEntity(),
    );
  }
}

extension SallaOrderItemMapper on SallaOrderItemModel {
  SallaOrderItemEntity toEntity() {
    return SallaOrderItemEntity(
      id: id!,
      printedName: printedName ?? '',
      sallaOrderItemUnits:
          sallaOrderItemUnits?.map((e) {
            return e.toEntity();
          }).toList() ??
          [],
    );
  }
}

extension SallaOrderItemUnitMapper on SallaOrderItemUnitModel {
  SallaOrderItemUnitEntity toEntity() {
    return SallaOrderItemUnitEntity(
      id: id,
      executionNumber: executionNumber,
      docs: docs.map((e) {
        return e.toEntity();
      }).toList(),
    );
  }
}

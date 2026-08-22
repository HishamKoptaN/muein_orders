import '../../../../../core/mapper/meta_mapper.dart';
import '../../../docs/data/mapper/docs_mapper.dart';
import '../../domain/entities/salla_order_items_res_entity.dart';
import '../models/order_items_res_model.dart';

extension SallaOrderItemsResModelMapper on SallaOrderItemsResModel {
  SallaOrderItemsResEntity toEntity() {
    return SallaOrderItemsResEntity(
      sallaOrderItems: sallaOrderItems.map((m) {
        return m.toEntity();
      }).toList(),
      meta: meta.toEntity(),
    );
  }
}

extension SallaOrderItemMapper on SallaOrderItemModel {
  SallaOrderItemEntity toEntity() {
    return SallaOrderItemEntity(
      id: id,
      printedName: printedName,
      sallaOrderItemUnits: sallaOrderItemUnits.map((e) {
        return e.toEntity();
      }).toList(),
      sallaOrderItemStatus: sallaOrderItemStatus.toEntity(),
    );
  }
}

extension SallaOrderItemStatusMapper on SallaOrderItemStatusModel {
  SallaOrderItemStatusEntity toEntity() {
    return SallaOrderItemStatusEntity(name: name);
  }
}

extension SallaOrderItemUnitMapper on SallaOrderItemUnitModel {
  SallaOrderItemUnitEntity toEntity() {
    return SallaOrderItemUnitEntity(
      id: id,
      unitNumber: unitNumber,
      executionNumber: executionNumber,
      docs: docs.map((e) {
        return e.toEntity();
      }).toList(),
    );
  }
}

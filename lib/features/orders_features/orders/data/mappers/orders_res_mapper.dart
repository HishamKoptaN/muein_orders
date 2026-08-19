import '../../../../../core/entities/meta_entity.dart';
import '../../../../../core/mapper/meta_mapper.dart';
import '../../../docs/data/mapper/docs_mapper.dart';
import '../../../orders_items/data/mappers/order_items_res_mapper.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../models/orders_res_model.dart';

extension OrdersResModelMapper on OrdersResModel {
  OrdersResEntity toEntity() {
    return OrdersResEntity(
      orders: orders?.map((m) => m.toEntity()).toList() ?? [],
      meta: meta?.toEntity() ?? const MetaEntity(),
    );
  }
}

extension OrderMapper on OrderModel {
  OrderEntity toEntity() {
    return OrderEntity(
      id: id ?? 0,
      sallaOrderId: sallaOrderId ?? 0,
      sallaOrderItemUnits:
          sallaOrderItems?.map((c) {
            return c.toEntity();
          }).toList() ??
          [],
    );
  }
}

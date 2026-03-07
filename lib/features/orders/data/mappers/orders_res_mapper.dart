import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../../docs/data/mapper/docs_mapper.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../models/orders_res_model.dart';

extension OrdersResModelMapper on OrdersResModel {
  OrdersResEntity toEntity() {
    return when(
      orders: (modelList, meta) => OrdersResEntity.orders(
        orders: modelList?.map((m) => m.toEntity()).toList() ?? [],
        meta: meta?.toEntity() ?? const MetaEntity(),
      ),
      individualDocs: (docList) => OrdersResEntity.individualDocs(
        docs: docList.map((d) => d.toEntity()).toList(),
      ),
    );
  }
}

extension OrderMapper on OrderModel {
  OrderEntity toEntity() {
    return OrderEntity(
      id: id ?? 0,
      sallaOrderId: sallaOrderId ?? 0,
      printedName: printedName ?? '',
      executionNumber: executionNumber ?? '',
      docs: docs?.map((c) => c.toEntity()).toList() ?? [],
    );
  }
}

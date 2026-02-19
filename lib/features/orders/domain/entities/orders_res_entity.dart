import '../../../../core/entities/meta_entity.dart';
import '../../../docs/domain/entities/docs_res_entity.dart';

class OrdersResEntity {
  final List<OrderEntity>? orders;
  final MetaEntity? meta;
  OrdersResEntity({this.orders, this.meta});
  OrdersResEntity copyWith({List<OrderEntity>? orders, MetaEntity? meta}) =>
      OrdersResEntity(orders: orders ?? this.orders, meta: meta ?? this.meta);
}

class OrderEntity {
  final int? id;
  final int? sallaOrderId;
  final int? sallaProductId;
  final String? printedName;
  final List<DocEntity>? docs;
  OrderEntity({
    this.id,
    this.sallaOrderId,
    this.sallaProductId,
    this.printedName,
    this.docs,
  });

  OrderEntity copyWith({
    int? id,
    int? sallaOrderId,
    int? sallaProductId,
    String? printedName,
    List<DocEntity>? docs,
  }) => OrderEntity(
    id: id ?? this.id,
    sallaOrderId: sallaOrderId ?? this.sallaOrderId,
    sallaProductId: sallaProductId ?? this.sallaProductId,
    printedName: printedName ?? this.printedName,
    docs: docs ?? this.docs,
  );
}

enum DocUploadStatus { notStarted, uploading, success, failed }

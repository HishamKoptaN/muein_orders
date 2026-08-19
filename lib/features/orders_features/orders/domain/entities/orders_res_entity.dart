import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../orders_items/domain/entities/order_items_res_entity.dart';
part 'orders_res_entity.freezed.dart';

@freezed
sealed class OrdersResEntity with _$OrdersResEntity {
  const OrdersResEntity._();
  const factory OrdersResEntity({
    required List<OrderEntity> orders,
    required MetaEntity meta,
  }) = _OrdersEntity;
 

}

@freezed
abstract class OrderEntity with _$OrderEntity {
  const OrderEntity._();
  const factory OrderEntity({
    required int id,
    required int sallaOrderId,
    required List<SallaOrderItemEntity> sallaOrderItemUnits,
  }) = _OrderEntity;
}

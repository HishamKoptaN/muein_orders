import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../../salla_orders_items/domain/entities/salla_order_items_res_entity.dart';
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
    required List<SallaOrderItemEntity> sallaOrderItems,
  }) = _OrderEntity;
}

import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../models/orders_res_model.dart';

extension OrdersResMapper on OrdersResModel {
  OrdersResEntity toEntity() {
    return OrdersResEntity(
      orders: orders?.map((c) => c.toEntity()).toList() ?? [],
      meta: meta?.toEntity() ?? const MetaEntity(),
    );
  }
}

extension OrderMapper on Order {
  OrderEntity toEntity() {
    return OrderEntity(
      id: id ?? 0,
      status: 1,
      printedName: printedName ?? '',
      date: date ?? DateTime.now(),
      isQuranPhotographed: isQuranPhotographed ?? false,
      isDistributionPhotographed: isDistributionPhotographed ?? false,
      stickerPrepared: stickerPrepared ?? false,
      createdAt: createdAt ?? '',
    );
  }
}

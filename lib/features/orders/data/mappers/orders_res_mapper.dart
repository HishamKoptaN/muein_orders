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
      name: name ?? '',
      printedName: printedName ?? '',
      executionNum: executionNum ?? '',
      orderNum: orderNum ?? '',
      cartonCount: cartonCount ?? 0,
      ordersCount: ordersCount ?? 0,
      totalAmount: totalAmount ?? '0',
      date: date ?? DateTime.now(),
      phone: phone ?? '',
      email: email ?? '',
      isQuranPrinted: isQuranPrinted ?? false,
      isQuranPhotographed: isQuranPhotographed ?? false,
      isDistributionPhotographed: isDistributionPhotographed ?? false,
      isLocationReceived: isLocationReceived ?? false,
      locationLink: locationLink == true,
      finalEstimateReady: finalEstimateReady ?? false,
      isReportSent: isReportSent ?? false,
      stickerPrepared: stickerPrepared ?? false,
      createdAt: createdAt ?? '',
      isFinalReportReady: isFinalReportReady ?? false,
      videosUploaded: videosUploaded ?? false,
    );
  }
}

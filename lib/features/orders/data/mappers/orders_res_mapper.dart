// data/mappers/order_mapper.dart
import '../../domain/entities/orders_res_entity.dart';
import '../models/orders_res_model.dart';

extension OrdersResModelMapper on OrdersResModel {
  OrdersResEntity toEntity() {
    return OrdersResEntity(
      package: package?.toEntity(),
      orders: orders?.map((e) => e.toEntity()).toList(),
    );
  }
}

extension OrderMapper on Order {
  OrderEntity toEntity() {
    return OrderEntity(
      id: id,
      name: name,
      printedName: printedName,
      executionNum: executionNum,
      orderNum: orderNum,
      cartonCount: cartonCount,
      ordersCount: ordersCount,
      totalAmount: totalAmount,
      date: date,
      days: days,
      email: email,
      phone: phone,
      isQuranPrinted: isQuranPrinted,
      isQuranPhotographed: isQuranPhotographed,
      isDistributionPhotographed: isDistributionPhotographed,
      isLocationReceived: isLocationReceived,
      isFinalReportReady: isFinalReportReady,
      isReportSent: isReportSent,
      stickerPrepared: stickerPrepared,
      videosUploaded: videosUploaded,
      finalEstimateReady: finalEstimateReady,
      package: package?.toEntity(),
    );
  }
}

extension OrderPackageMapper on OrderPackage {
  OrderPackageEntity toEntity() {
    return OrderPackageEntity(
      id: id,
      type: type,
      quantity: quantity,
    );
  }
}

extension OrdersResModelPackageMapper on OrdersResModelPackage {
  PackageEntity toEntity() {
    return PackageEntity(
      id: id,
      quantity: quantity,
    );
  }
}

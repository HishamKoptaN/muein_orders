// data/mappers/order_mapper.dart
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/entities/package_entity.dart';
import '../models/orders_res_model.dart';

extension OrdersResModelMapper on OrdersResModel {
  OrdersResEntity toEntity() => OrdersResEntity(
        package: package?.toEntity(),
        orders: orders?.map((e) => e.toEntity()).toList(),
      );
}
extension OrderMapper on Order {
  OrderEntity toEntity() => OrderEntity(
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

extension OrderPackageMapper on OrderPackage {
  PackageEntity toEntity() => PackageEntity(
        id: id,
        name: name,
        description: description,
        price: price,
        image: image,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

extension OrdersResModelPackageMapper on OrdersResModelPackage {
  PackageEntity toEntity() => PackageEntity(
        id: id,
        name: name,
        description: description,
        price: price,
        image: image,
        ordersCount: ordersCount,
        totalAmount: totalAmount,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

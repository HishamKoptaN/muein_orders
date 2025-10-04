import '../../domain/entities/order_type_res_entity.dart';
import '../models/order_type_res_model.dart';

extension OrderTypeResModelMapper on OrderTypeResModel {
  OrderTypeResEntity toEntity() => OrderTypeResEntity(
        package: package?.toEntity(),
        ordersCount: ordersCount,
        totalQuranCopies: totalQuranCopies,
      );
}

extension PackageModelMapper on Package {
  PackageEntity toEntity() => PackageEntity(
        id: id,
        quantity: quantity,
        image: image,
        type: type?.toEntity(),
      );
}

extension TypeModelMapper on Type {
  TypeEntity toEntity() => TypeEntity(
        id: id,
        name: name,
        distributedType: distributedType,
      );
}

import '../../domain/entities/order_type_res_entity.dart';
import '../models/order_type_res_model.dart';

extension OrderTypeResModelMapper on OrderTypeResModel {
  OrderTypeResEntity toEntity() => OrderTypeResEntity(
    productType: productType?.toEntity(),
    ordersCount: ordersCount,
    totalQuranCopies: totalQuranCopies,
  );
}

extension ProductTypeModelMapper on ProductTypeModel {
  ProductTypeEntity toEntity() => ProductTypeEntity(id: id, name: name);
}

class OrderTypeResEntity {
  OrderTypeResEntity({
    this.productType,
    this.ordersCount,
    this.totalQuranCopies,
  });
  ProductTypeEntity? productType;
  int? ordersCount;
  int? totalQuranCopies;
}

class ProductTypeEntity {
  ProductTypeEntity({this.id, this.name, this.docsCount});
  int? id;
  String? name;
  int? docsCount;
}

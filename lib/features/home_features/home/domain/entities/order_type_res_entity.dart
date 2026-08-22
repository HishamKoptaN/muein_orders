import '../../../../orders_features/salla_orders_items/domain/entities/salla_order_items_res_entity.dart';

class StatEntity {
  final int? id;
  final int? docsCount;
  final SubCategoryEntity? subCategory;
  final SallaOrderItemUnitEntity? doc;

  StatEntity({this.id, this.docsCount, this.subCategory, this.doc});

  StatEntity copyWith({
    int? id,
    int? docsCount,
    SubCategoryEntity? subCategory,
    SallaOrderItemUnitEntity? doc,
  }) => StatEntity(
    id: id ?? this.id,
    docsCount: docsCount ?? this.docsCount,
    subCategory: subCategory ?? this.subCategory,
    doc: doc ?? this.doc,
  );
}

class SubCategoryEntity {
  final int? id;
  final String? name;
  final String? image;

  SubCategoryEntity({this.id, this.name, this.image});

  SubCategoryEntity copyWith({int? id, String? name, String? image}) =>
      SubCategoryEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
      );
}

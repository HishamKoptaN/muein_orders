import '../../../orders/domain/entities/orders_res_entity.dart';

class StatEntity {
  final int? id;
  final int? docsCount;
  final SubCategoryEntity? subCategory;
  final DocEntity? doc;

  StatEntity({this.id, this.docsCount, this.subCategory, this.doc});

  StatEntity copyWith({
    int? id,
    int? docsCount,
    SubCategoryEntity? subCategory,
    DocEntity? doc,
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

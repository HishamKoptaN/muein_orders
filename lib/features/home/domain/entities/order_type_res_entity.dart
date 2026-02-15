class StatEntity {
  final int? id;
  final int? docsCount;
  final SubCategoryEntity? subCategory;

  StatEntity({this.id, this.docsCount, this.subCategory});

  StatEntity copyWith({int? id, int? docsCount, SubCategoryEntity? subCategory}) =>
      StatEntity(
        id: id ?? this.id,
        docsCount: docsCount ?? this.docsCount,
        subCategory: subCategory ?? this.subCategory,
      );
}

class SubCategoryEntity {
  final int? id;
  final String? name;
  final String? image;

  SubCategoryEntity({this.id, this.name, this.image});

  SubCategoryEntity copyWith({int? id, String? name, String? image}) => SubCategoryEntity(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
  );
}

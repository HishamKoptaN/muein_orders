import '../../domain/entities/order_type_res_entity.dart';
import '../models/stat_model.dart';

extension OrderTypeResModelMapper on StatModel {
  StatEntity toEntity() {
    return StatEntity(
      id: id ?? 0,
      docsCount: docsCount ?? 0,
      subCategory: subCategory?.toEntity(),
    );
  }
}

extension SubCategoryModelMapper on SubCategoryModel {
  SubCategoryEntity toEntity() {
    return SubCategoryEntity(id: id ?? 0, name: name ?? '', image: image ?? '');
  }
}

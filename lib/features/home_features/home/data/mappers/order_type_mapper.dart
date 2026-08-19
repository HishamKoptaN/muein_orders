import '../../../../orders_features/docs/data/mapper/docs_mapper.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../models/stat_model.dart';

extension OrderTypeResModelMapper on StatModel {
  StatEntity toEntity() {
    return StatEntity(
      id: id,
      docsCount: docsCount,
      subCategory: subCategory?.toEntity(),
      // doc: doc?.toEntity(),
    );
  }
}

extension SubCategoryModelMapper on SubCategoryModel {
  SubCategoryEntity toEntity() =>
      SubCategoryEntity(id: id, name: name, image: image);
}

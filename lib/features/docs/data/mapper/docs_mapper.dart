import '../../../../core/entities/meta_entity.dart';
import '../../../../core/models/meta.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../models/docs_res_model.dart';

extension DocsResModelMapper on DocsResModel {
  DocsResEntity toEntity() => DocsResEntity(
        docs: docs?.map((doc) => doc.toEntity()).toList(),
        meta: meta?.toEntity(),
      );
}
extension MetaModelMapper on Meta {
  MetaEntity toEntity() => MetaEntity(
        perPage: perPage,
        currentPage: currentPage,
        totalPages: totalPages,
        hasNextPage: hasNextPage,
        hasPreviousPage: hasPreviousPage,
      );
}

extension DocModelMapper on Doc {
  DocEntity toEntity() => DocEntity(
        id: id,
        orderNumber: orderNumber,
        place: place,
        video: video,
        thumbnailUrl: thumbnailUrl,
        imageOne: imageOne,
        imageTwo: imageTwo,
        updatedAt: updatedAt,
        latitude: latitude,
        longitude: longitude,
        branchId: branchId,
        createdAt: createdAt,
      );
}

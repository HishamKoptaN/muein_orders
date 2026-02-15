import '../../../../core/entities/meta_entity.dart';
import '../../../../core/models/meta_model.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../models/docs_res_model.dart';

extension DocsResModelMapper on DocsResModel {
  DocsResEntity toEntity() => DocsResEntity(
    docs: docs?.map((doc) => doc.toEntity()).toList(),
    meta: meta?.toEntity(),
  );
}

extension MetaModelMapper on MetaModel {
  MetaEntity toEntity() => MetaEntity(
    perPage: perPage,
    currentPage: currentPage,
    totalPages: totalPages,
    hasNextPage: hasNextPage,
    hasPreviousPage: hasPreviousPage,
  );
}

extension DocModelMapper on DocModel {
  DocEntity toEntity() => DocEntity(
    id: id,
    videoOne: videoOne,
    videoTwo: videoTwo,
    thumbnailUrlOne: thumbnailUrlOne,
    thumbnailUrlTwo: thumbnailUrlTwo,
    imageOne: imageOne,
    imageTwo: imageTwo,
    updatedAt: updatedAt,
    latitude: latitude,
    longitude: longitude,
    docStatusModel: docStatus,
    createdAt: createdAt,
  );
}

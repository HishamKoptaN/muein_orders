import 'package:flutter/material.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../../core/models/meta_model.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../domain/entities/create_doc_entity.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../models/docs_res_model.dart';

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
    latitude: latitude,
    longitude: longitude,
    docStatus: docStatus?.toEntity(),
    createdAt: createdAt,
  );
}

extension DocStatusMapper on DocStatusModel {
  DocStatusEntity toEntity() {
    return DocStatusEntity(
      id: id ?? 0,
      name: name ?? '',
      textColor: _hexToColor(textColor),
      backgroundColor: _hexToColor(backgroundColor),
    );
  }

  Color _hexToColor(String? hex) {
    if (hex == null || hex.isEmpty) return Colors.transparent;
    return Color(int.parse(hex.replaceFirst('#', '0xff')));
  }
}

extension CachedDocEntryMapper on CachedDocEntry {
  CreateDocEntity toCreateEntity() {
    return CreateDocEntity(
      docId: docId,
      files: [
        if (imageOne != null) imageOne!,
        if (imageTwo != null) imageTwo!,
        if (videoOne != null) videoOne!,
        if (videoTwo != null) videoTwo!,
      ],
      location: location,
    );
  }
}

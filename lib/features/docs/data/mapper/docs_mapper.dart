import 'package:flutter/material.dart';

import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../orders/domain/entities/orders_res_entity.dart';
import '../../domain/entities/doc_req_entity.dart';
import '../../domain/entities/doc_media_req_entity.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../models/doc_media_req_model.dart';
import '../models/docs_res_model.dart';

extension DocModelMapper on DocModel {
  DocEntity toEntity() => DocEntity(
    id: id ?? 0,
    videoTwo: videoTwo,
    thumbnailUrlOne: thumbnailUrlOne,
    thumbnailUrlTwo: thumbnailUrlTwo,
    imageOne: imageOne,
    imageTwo: imageTwo,
    latitude: latitude,
    longitude: longitude,
    docStatus: docStatus?.toEntity(),
    createdAt: createdAt,
    copiesCount: copiesCount,
    reviewedBy: reviewedBy,
    reviewedAt: reviewedAt,
    adminNotes: adminNotes,
    updatedAt: updatedAt,
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
  DocReqEntity toCreateEntity() {
    return DocReqEntity(docId: docId, files: files ?? [], location: location);
  }
}

extension DocMediaReqEntityMapper on DocMediaReqEntity {
  DocMediaReqModel toModel() {
    return DocMediaReqModel(
      docId: docId,
      filePath: filePath,
      thumbnail: thumbnail,
      fileType: fileType,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'doc_status_entity.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
part 'doc_entity.freezed.dart';

@freezed
abstract class DocEntity with _$DocEntity {
  const factory DocEntity({
    @Default(0) int id,
    @Default(0) int itemId,
    @Default(0) int unitId,
    @Default([]) List<DocMediaEntity> files,
    @Default('') String latitude,
    @Default('') String longitude,
    @Default(UploadStatus.init) UploadStatus locationUploadStatus,
    @Default(DocStatusEntity()) DocStatusEntity docStatus,
    @Default(UploadStatus.init) UploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
    int? copiesCount,
    String? reviewedBy,
    String? reviewedAt,
    String? adminNotes,
    String? createdAt,
    String? updatedAt,
  }) = _DocEntity;
}

@freezed
abstract class DocMediaEntity with _$DocMediaEntity {
  const factory DocMediaEntity({
    @Default(0) int id,
    @Default(0) int docId,
    @Default('') String localFilePath,
    @Default('') String filePath,
    @Default(DocMediaType.image) DocMediaType docMediaType,
    @Default('') String thumbnail,
    @Default(0) int sequence,
    @Default(UploadStatus.init) UploadStatus fileUploadStatus,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default(false) bool isEdited,
  }) = _DocMediaEntity;
}

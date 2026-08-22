import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import 'doc_status_entity.dart';
part 'doc_entity.freezed.dart';

@freezed
abstract class DocEntity with _$DocEntity {
  const factory DocEntity({
    @Default(0) int id,
    @Default([]) List<DocMediaEntity> files,
    @Default('') String latitude,
    @Default('') String longitude,
    @Default(DocStatusEntity()) DocStatusEntity docStatus,
    @Default(LocationDocEntity()) LocationDocEntity location,
    @Default(UploadStatus.pending) UploadStatus uploadStatus,
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
    @Default('') String filePath,
    @Default(DocMediaType.image) DocMediaType docMediaType,
    @Default('') String thumbnail,
    @Default(0) int sequence,
    @Default(UploadStatus.init) UploadStatus fileUploadStatus,
    @Default('') String path,
    @Default('') String remoteUrl,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _DocMediaEntity;
}

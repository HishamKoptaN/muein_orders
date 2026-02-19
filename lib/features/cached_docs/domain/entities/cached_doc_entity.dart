import 'dart:io';

import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasources/local/drift/app_database.dart';
import '../../data/datasources/local/drift/cached_docs_table.dart';
import 'create_cached_doc_entity.dart';

part 'cached_doc_entity.freezed.dart';
part 'cached_doc_entity.g.dart';

@freezed
abstract class CachedDocEntity with _$CachedDocEntity {
  const CachedDocEntity._();
  const factory CachedDocEntity({
    int? docId,
    List<DocFile>? files,
    LocationDoc? location,
    @Default(FileUploadStatus.pending) FileUploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
  }) = _CachedDocEntity;

  factory CachedDocEntity.fromJson(Map<String, dynamic> json) =>
      _$CachedDocEntityFromJson(json);
  factory CachedDocEntity.fromDb(CachedDocEntry cachedDoc) {
    return CachedDocEntity(
      docId: cachedDoc.docId,
      files: cachedDoc.files,
      location: cachedDoc.location,
      uploadStatus: FileUploadStatus.values.firstWhere(
        (e) => e.name == cachedDoc.uploadStatus,
        orElse: () => FileUploadStatus.pending,
      ),
      uploadProgress: cachedDoc.uploadProgress,
    );
  }
  CreateCachedDocEntity toCreateCachedDocEntity() {
    return CreateCachedDocEntity(
      docId: GenericFormzInput.dirty(docId),
      files:
          files
              ?.map(
                (file) => DocFileEntity(
                  file: FileFormzInput.dirty(_fileFromPath(file.path)),
                  docFileStatus: file.status,
                ),
              )
              .toList() ??
          [],
      location: LocationEntity(
        latitude: location?.latitude,
        longitude: location?.longitude,
        status: FileUploadStatus.init,
      ),
    );
  }

  static File? _fileFromPath(String? path) {
    return path != null ? File(path) : null;
  }

  factory CachedDocEntity.empty() => const CachedDocEntity();
}

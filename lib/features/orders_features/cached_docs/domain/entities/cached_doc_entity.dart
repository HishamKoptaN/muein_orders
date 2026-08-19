import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/datasources/local/drift/app_database.dart';
import '../../data/datasources/local/drift/cached_docs_table.dart';
import 'create_cached_doc_entity.dart';
part 'cached_doc_entity.freezed.dart';

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
  factory CachedDocEntity.fromDb(CachedDocEntry cachedDocEntry) {
    return CachedDocEntity(
      docId: cachedDocEntry.docId,
      files: cachedDocEntry.files,
      location: cachedDocEntry.location,
      uploadStatus: .values.firstWhere(
        (e) {
          return e.name == cachedDocEntry.uploadStatus;
        },
        orElse: () {
          return .pending;
        },
      ),
      uploadProgress: cachedDocEntry.uploadProgress,
    );
  }

  CreateCachedDocEntity toCreateCachedDocEntity() {
    return CreateCachedDocEntity(
      docId: .dirty(value: docId?.toString() ?? ''),
      files:
          files?.map((file) {
            return DocFileEntity(
              file: .dirty(_fileFromPath(file.path)),
              docFileStatus: file.status,
            );
          }).toList() ??
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
}

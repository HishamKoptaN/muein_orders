import '../../domain/entities/cached_doc_entity.dart';
import '../datasources/local/drift/cached_docs_table.dart';
import '../models/cached_doc_model.dart';

extension CachedDocMapper on CachedDocModel {
  CachedDocEntity toEntity() {
    return CachedDocEntity(
      docId: docId,
      files: files,
      location: location,
      uploadStatus: FileUploadStatus.values.firstWhere(
        (e) => e.name == uploadStatus,
        orElse: () => FileUploadStatus.pending,
      ),
      uploadProgress: uploadProgress,
    );
  }
}

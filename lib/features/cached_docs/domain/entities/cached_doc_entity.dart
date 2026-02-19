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
    DocFile? imageOne,
    DocFile? imageTwo,
    DocFile? videoOne,
    DocFile? videoTwo,
    LocationDoc? location,
    @Default(FileUploadStatus.pending) FileUploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
  }) = _CachedDocEntity;

  factory CachedDocEntity.fromJson(Map<String, dynamic> json) =>
      _$CachedDocEntityFromJson(json);
  factory CachedDocEntity.fromDb(CachedDocEntry cachedDoc) {
    return CachedDocEntity(
      docId: cachedDoc.docId,
      imageOne: cachedDoc.imageOne,
      imageTwo: cachedDoc.imageTwo,
      videoOne: cachedDoc.videoOne,
      videoTwo: cachedDoc.videoTwo,
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
      imageOne: DocFileEntity(
        file: FileFormzInput.dirty(_fileFromPath(imageOne?.path)),
        docFileStatus: imageOne?.status ?? FileUploadStatus.init,
      ),
      imageTwo: DocFileEntity(
        file: FileFormzInput.dirty(_fileFromPath(imageTwo?.path)),
        docFileStatus: imageTwo?.status ?? FileUploadStatus.init,
      ),
      videoOne: DocFileEntity(
        file: FileFormzInput.dirty(_fileFromPath(videoOne?.path)),
        docFileStatus: videoOne?.status ?? FileUploadStatus.init,
      ),
      videoTwo: DocFileEntity(
        file: FileFormzInput.dirty(_fileFromPath(videoTwo?.path)),
        docFileStatus: videoTwo?.status ?? FileUploadStatus.init,
      ),
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

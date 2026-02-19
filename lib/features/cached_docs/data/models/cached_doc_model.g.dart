// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_doc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CachedDocModel _$CachedDocModelFromJson(Map<String, dynamic> json) =>
    _CachedDocModel(
      docId: (json['docId'] as num?)?.toInt(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => DocFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] == null
          ? null
          : LocationDoc.fromJson(json['location'] as Map<String, dynamic>),
      uploadStatus:
          $enumDecodeNullable(
            _$FileUploadStatusEnumMap,
            json['uploadStatus'],
          ) ??
          FileUploadStatus.pending,
      uploadProgress: (json['uploadProgress'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CachedDocModelToJson(_CachedDocModel instance) =>
    <String, dynamic>{
      'docId': ?instance.docId,
      'files': ?instance.files?.map((e) => e.toJson()).toList(),
      'location': ?instance.location?.toJson(),
      'uploadStatus': _$FileUploadStatusEnumMap[instance.uploadStatus]!,
      'uploadProgress': instance.uploadProgress,
    };

const _$FileUploadStatusEnumMap = {
  FileUploadStatus.init: 'init',
  FileUploadStatus.pending: 'pending',
  FileUploadStatus.uploading: 'uploading',
  FileUploadStatus.uploaded: 'uploaded',
  FileUploadStatus.failed: 'failed',
};

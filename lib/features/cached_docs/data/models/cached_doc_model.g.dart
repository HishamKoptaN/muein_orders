// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_doc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CachedDocModel _$CachedDocModelFromJson(Map<String, dynamic> json) =>
    _CachedDocModel(
      docId: (json['docId'] as num?)?.toInt(),
      imageOne: json['imageOne'] == null
          ? null
          : DocFile.fromJson(json['imageOne'] as Map<String, dynamic>),
      imageTwo: json['imageTwo'] == null
          ? null
          : DocFile.fromJson(json['imageTwo'] as Map<String, dynamic>),
      videoOne: json['videoOne'] == null
          ? null
          : DocFile.fromJson(json['videoOne'] as Map<String, dynamic>),
      videoTwo: json['videoTwo'] == null
          ? null
          : DocFile.fromJson(json['videoTwo'] as Map<String, dynamic>),
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
      'imageOne': ?instance.imageOne?.toJson(),
      'imageTwo': ?instance.imageTwo?.toJson(),
      'videoOne': ?instance.videoOne?.toJson(),
      'videoTwo': ?instance.videoTwo?.toJson(),
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

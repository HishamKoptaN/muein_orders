// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_doc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CachedDocModel _$CachedDocModelFromJson(Map<String, dynamic> json) =>
    _CachedDocModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      files:
          (json['files'] as List<dynamic>?)
              ?.map(
                (e) => CachedDocMediaModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      location: json['location'] == null
          ? null
          : LocationDocModel.fromJson(json['location'] as Map<String, dynamic>),
      uploadStatus:
          $enumDecodeNullable(_$UploadStatusEnumMap, json['uploadStatus']) ??
          UploadStatus.pending,
      uploadProgress: (json['uploadProgress'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CachedDocModelToJson(_CachedDocModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'files': instance.files.map((e) => e.toJson()).toList(),
      'location': ?instance.location?.toJson(),
      'uploadStatus': _$UploadStatusEnumMap[instance.uploadStatus]!,
      'uploadProgress': instance.uploadProgress,
    };

const _$UploadStatusEnumMap = {
  UploadStatus.init: 'init',
  UploadStatus.pending: 'pending',
  UploadStatus.uploading: 'uploading',
  UploadStatus.uploaded: 'uploaded',
  UploadStatus.failed: 'failed',
};

_LocationDocModel _$LocationDocModelFromJson(Map<String, dynamic> json) =>
    _LocationDocModel(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
      status:
          $enumDecodeNullable(_$UploadStatusEnumMap, json['status']) ??
          UploadStatus.init,
    );

Map<String, dynamic> _$LocationDocModelToJson(_LocationDocModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': _$UploadStatusEnumMap[instance.status]!,
    };

_CachedDocMediaModel _$CachedDocMediaModelFromJson(Map<String, dynamic> json) =>
    _CachedDocMediaModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      docId: (json['docId'] as num?)?.toInt() ?? 0,
      type:
          $enumDecodeNullable(_$DocMediaTypeEnumMap, json['type']) ??
          DocMediaType.image,
      sequence: (json['sequence'] as num?)?.toInt() ?? 0,
      path: json['path'] as String? ?? '',
      remoteUrl: json['remoteUrl'] as String? ?? '',
      status:
          $enumDecodeNullable(_$UploadStatusEnumMap, json['status']) ??
          UploadStatus.init,
    );

Map<String, dynamic> _$CachedDocMediaModelToJson(
  _CachedDocMediaModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'docId': instance.docId,
  'type': _$DocMediaTypeEnumMap[instance.type]!,
  'sequence': instance.sequence,
  'path': instance.path,
  'remoteUrl': instance.remoteUrl,
  'status': _$UploadStatusEnumMap[instance.status]!,
};

const _$DocMediaTypeEnumMap = {
  DocMediaType.image: 'image',
  DocMediaType.video: 'video',
};

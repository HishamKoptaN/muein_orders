// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_doc_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CachedDocEntity _$CachedDocEntityFromJson(Map<String, dynamic> json) =>
    _CachedDocEntity(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['orderId'] as num?)?.toInt(),
      imageOne: json['imageOne'] as String?,
      imageTwo: json['imageTwo'] as String?,
      videoOne: json['videoOne'] as String?,
      videoTwo: json['videoTwo'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      shippingCost: (json['shippingCost'] as num?)?.toDouble(),
      uploadStatus:
          $enumDecodeNullable(_$UploadStatusEnumMap, json['uploadStatus']) ??
          UploadStatus.pending,
      uploadProgress: (json['uploadProgress'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CachedDocEntityToJson(_CachedDocEntity instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'orderId': ?instance.orderId,
      'imageOne': ?instance.imageOne,
      'imageTwo': ?instance.imageTwo,
      'videoOne': ?instance.videoOne,
      'videoTwo': ?instance.videoTwo,
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
      'shippingCost': ?instance.shippingCost,
      'uploadStatus': _$UploadStatusEnumMap[instance.uploadStatus]!,
      'uploadProgress': instance.uploadProgress,
    };

const _$UploadStatusEnumMap = {
  UploadStatus.pending: 'pending',
  UploadStatus.uploading: 'uploading',
  UploadStatus.success: 'success',
  UploadStatus.failure: 'failure',
};

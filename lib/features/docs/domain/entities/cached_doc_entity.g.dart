// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_doc_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CachedDocEntityImpl _$$CachedDocEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CachedDocEntityImpl(
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

Map<String, dynamic> _$$CachedDocEntityImplToJson(
        _$CachedDocEntityImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.orderId case final value?) 'orderId': value,
      if (instance.imageOne case final value?) 'imageOne': value,
      if (instance.imageTwo case final value?) 'imageTwo': value,
      if (instance.videoOne case final value?) 'videoOne': value,
      if (instance.videoTwo case final value?) 'videoTwo': value,
      if (instance.latitude case final value?) 'latitude': value,
      if (instance.longitude case final value?) 'longitude': value,
      if (instance.shippingCost case final value?) 'shippingCost': value,
      'uploadStatus': _$UploadStatusEnumMap[instance.uploadStatus]!,
      'uploadProgress': instance.uploadProgress,
    };

const _$UploadStatusEnumMap = {
  UploadStatus.pending: 'pending',
  UploadStatus.uploading: 'uploading',
  UploadStatus.success: 'success',
  UploadStatus.failure: 'failure',
};

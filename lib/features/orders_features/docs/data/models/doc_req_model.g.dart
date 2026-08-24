// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocReqModel _$DocReqModelFromJson(Map<String, dynamic> json) => _DocReqModel(
  latitude: json['latitude'] as String? ?? '',
  longitude: json['longitude'] as String? ?? '',
);

Map<String, dynamic> _$DocReqModelToJson(_DocReqModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_DocMediaReqModel _$DocMediaReqModelFromJson(Map<String, dynamic> json) =>
    _DocMediaReqModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      filePath: json['file_path'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$DocMediaReqModelToJson(_DocMediaReqModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_path': instance.filePath,
      'thumbnail': instance.thumbnail,
    };

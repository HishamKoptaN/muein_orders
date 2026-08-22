// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocReqModel _$DocReqModelFromJson(Map<String, dynamic> json) => _DocReqModel(
  docId: (json['doc_id'] as num?)?.toInt() ?? 0,
  latitude: json['latitude'] as String? ?? '',
  longitude: json['longitude'] as String? ?? '',
);

Map<String, dynamic> _$DocReqModelToJson(_DocReqModel instance) =>
    <String, dynamic>{
      'doc_id': instance.docId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_DocMediaReqModel _$DocMediaReqModelFromJson(Map<String, dynamic> json) =>
    _DocMediaReqModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      docId: (json['docId'] as num?)?.toInt() ?? 0,
      filePath: json['filePath'] as String? ?? '',
      fileType: json['fileType'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$DocMediaReqModelToJson(_DocMediaReqModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'docId': instance.docId,
      'filePath': instance.filePath,
      'fileType': instance.fileType,
      'thumbnail': instance.thumbnail,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocReqModel _$DocReqModelFromJson(Map<String, dynamic> json) => _DocReqModel(
  docId: (json['doc_id'] as num).toInt(),
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
);

Map<String, dynamic> _$DocReqModelToJson(_DocReqModel instance) =>
    <String, dynamic>{
      'doc_id': instance.docId,
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
    };

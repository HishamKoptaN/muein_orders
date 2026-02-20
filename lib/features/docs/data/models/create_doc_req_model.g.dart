// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_doc_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocReqModel _$CreateDocReqModelFromJson(Map<String, dynamic> json) =>
    _CreateDocReqModel(
      docId: (json['doc_id'] as num).toInt(),
      videoOne: json['video_one'] as String?,
      videoTwo: json['video_two'] as String?,
      thumbnailUrlOne: json['thumbnail_url_one'] as String?,
      thumbnailUrlTwo: json['thumbnail_url_two'] as String?,
      imageOne: json['image_one'] as String?,
      imageTwo: json['image_two'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$CreateDocReqModelToJson(_CreateDocReqModel instance) =>
    <String, dynamic>{
      'doc_id': instance.docId,
      'video_one': ?instance.videoOne,
      'video_two': ?instance.videoTwo,
      'thumbnail_url_one': ?instance.thumbnailUrlOne,
      'thumbnail_url_two': ?instance.thumbnailUrlTwo,
      'image_one': ?instance.imageOne,
      'image_two': ?instance.imageTwo,
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
    };

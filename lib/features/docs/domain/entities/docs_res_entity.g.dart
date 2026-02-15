// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocsResEntity _$DocsResEntityFromJson(Map<String, dynamic> json) =>
    _DocsResEntity(
      docs: (json['docs'] as List<dynamic>?)
          ?.map((e) => DocEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocsResEntityToJson(_DocsResEntity instance) =>
    <String, dynamic>{
      'docs': ?instance.docs?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_DocEntity _$DocEntityFromJson(Map<String, dynamic> json) => _DocEntity(
  id: (json['id'] as num?)?.toInt(),
  videoOne: json['video_one'] as String?,
  videoTwo: json['video_two'] as String?,
  thumbnailUrlOne: json['thumbnail_url_one'] as String?,
  thumbnailUrlTwo: json['thumbnail_url_two'] as String?,
  imageOne: json['image_one'] as String?,
  imageTwo: json['image_two'] as String?,
  updatedAt: json['updated_at'] as String?,
  latitude: json['latitude'] as String?,
  docStatusModel: json['doc_status'] == null
      ? null
      : DocStatusModel.fromJson(json['doc_status'] as Map<String, dynamic>),
  longitude: json['longitude'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$DocEntityToJson(_DocEntity instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'video_one': ?instance.videoOne,
      'video_two': ?instance.videoTwo,
      'thumbnail_url_one': ?instance.thumbnailUrlOne,
      'thumbnail_url_two': ?instance.thumbnailUrlTwo,
      'image_one': ?instance.imageOne,
      'image_two': ?instance.imageTwo,
      'updated_at': ?instance.updatedAt,
      'latitude': ?instance.latitude,
      'doc_status': ?instance.docStatusModel?.toJson(),
      'longitude': ?instance.longitude,
      'created_at': ?instance.createdAt,
    };

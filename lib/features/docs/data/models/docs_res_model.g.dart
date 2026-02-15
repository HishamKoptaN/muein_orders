// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocsResModel _$DocsResModelFromJson(Map<String, dynamic> json) =>
    _DocsResModel(
      docs: (json['docs'] as List<dynamic>?)
          ?.map((e) => DocModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocsResModelToJson(_DocsResModel instance) =>
    <String, dynamic>{
      'docs': ?instance.docs?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_DocModel _$DocModelFromJson(Map<String, dynamic> json) => _DocModel(
  id: (json['id'] as num?)?.toInt(),
  videoOne: json['video_one'] as String?,
  videoTwo: json['video_two'] as String?,
  thumbnailUrlOne: json['thumbnail_url_one'] as String?,
  thumbnailUrlTwo: json['thumbnail_url_two'] as String?,
  imageOne: json['image_one'] as String?,
  imageTwo: json['image_two'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  docStatus: json['doc_status'] == null
      ? null
      : DocStatusModel.fromJson(json['doc_status'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$DocModelToJson(_DocModel instance) => <String, dynamic>{
  'id': ?instance.id,
  'video_one': ?instance.videoOne,
  'video_two': ?instance.videoTwo,
  'thumbnail_url_one': ?instance.thumbnailUrlOne,
  'thumbnail_url_two': ?instance.thumbnailUrlTwo,
  'image_one': ?instance.imageOne,
  'image_two': ?instance.imageTwo,
  'latitude': ?instance.latitude,
  'longitude': ?instance.longitude,
  'doc_status': ?instance.docStatus?.toJson(),
  'created_at': ?instance.createdAt,
  'updated_at': ?instance.updatedAt,
};

_DocStatusModel _$DocStatusModelFromJson(Map<String, dynamic> json) =>
    _DocStatusModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      textColor: json['text_color'] as String?,
      backgroundColor: json['background_color'] as String?,
      iconColor: json['icon_color'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DocStatusModelToJson(_DocStatusModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'text_color': ?instance.textColor,
      'background_color': ?instance.backgroundColor,
      'icon_color': ?instance.iconColor,
      'created_at': ?instance.createdAt,
      'updated_at': ?instance.updatedAt,
    };

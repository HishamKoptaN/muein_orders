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
  videoOne: json['videoOne'] as String?,
  videoTwo: json['videoTwo'] as String?,
  thumbnailUrlOne: json['thumbnailUrlOne'] as String?,
  thumbnailUrlTwo: json['thumbnailUrlTwo'] as String?,
  imageOne: json['imageOne'] as String?,
  imageTwo: json['imageTwo'] as String?,
  updatedAt: json['updatedAt'] as String?,
  latitude: json['latitude'] as String?,
  docStatusModel: json['docStatusModel'] == null
      ? null
      : DocStatusEntity.fromJson(
          json['docStatusModel'] as Map<String, dynamic>,
        ),
  longitude: json['longitude'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$DocEntityToJson(_DocEntity instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'videoOne': ?instance.videoOne,
      'videoTwo': ?instance.videoTwo,
      'thumbnailUrlOne': ?instance.thumbnailUrlOne,
      'thumbnailUrlTwo': ?instance.thumbnailUrlTwo,
      'imageOne': ?instance.imageOne,
      'imageTwo': ?instance.imageTwo,
      'updatedAt': ?instance.updatedAt,
      'latitude': ?instance.latitude,
      'docStatusModel': ?instance.docStatusModel?.toJson(),
      'longitude': ?instance.longitude,
      'createdAt': ?instance.createdAt,
    };

_DocStatusEntity _$DocStatusEntityFromJson(Map<String, dynamic> json) =>
    _DocStatusEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      textColor: const ColorConverter().fromJson(json['textColor'] as String?),
      backgroundColor: const ColorConverter().fromJson(
        json['backgroundColor'] as String?,
      ),
      iconColor: const ColorConverter().fromJson(json['iconColor'] as String?),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$DocStatusEntityToJson(
  _DocStatusEntity instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'textColor': ?const ColorConverter().toJson(instance.textColor),
  'backgroundColor': ?const ColorConverter().toJson(instance.backgroundColor),
  'iconColor': ?const ColorConverter().toJson(instance.iconColor),
  'createdAt': ?instance.createdAt,
  'updatedAt': ?instance.updatedAt,
};

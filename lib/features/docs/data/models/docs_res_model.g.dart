// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocsResModel _$DocsResModelFromJson(Map<String, dynamic> json) =>
    _DocsResModel(
      docs: (json['docs'] as List<dynamic>?)
          ?.map((e) => Doc.fromJson(e as Map<String, dynamic>))
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

_Doc _$DocFromJson(Map<String, dynamic> json) => _Doc(
  id: (json['id'] as num?)?.toInt(),
  orderNumber: json['order_number'] as String?,
  place: json['place'] as String?,
  videoOne: json['video_one'] as String?,
  videoTwo: json['video_two'] as String?,
  thumbnailUrlOne: json['thumbnail_url_one'] as String?,
  thumbnailUrlTwo: json['thumbnail_url_two'] as String?,
  imageOne: json['image_one'] as String?,
  imageTwo: json['image_two'] as String?,
  updatedAt: json['updated_at'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  branchId: (json['branch_id'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$DocToJson(_Doc instance) => <String, dynamic>{
  'id': ?instance.id,
  'order_number': ?instance.orderNumber,
  'place': ?instance.place,
  'video_one': ?instance.videoOne,
  'video_two': ?instance.videoTwo,
  'thumbnail_url_one': ?instance.thumbnailUrlOne,
  'thumbnail_url_two': ?instance.thumbnailUrlTwo,
  'image_one': ?instance.imageOne,
  'image_two': ?instance.imageTwo,
  'updated_at': ?instance.updatedAt,
  'latitude': ?instance.latitude,
  'longitude': ?instance.longitude,
  'branch_id': ?instance.branchId,
  'created_at': ?instance.createdAt,
};

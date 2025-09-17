// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_res_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocsResEntityImpl _$$DocsResEntityImplFromJson(Map<String, dynamic> json) =>
    _$DocsResEntityImpl(
      docs: (json['docs'] as List<dynamic>?)
          ?.map((e) => DocEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DocsResEntityImplToJson(_$DocsResEntityImpl instance) =>
    <String, dynamic>{
      if (instance.docs?.map((e) => e.toJson()).toList() case final value?)
        'docs': value,
      if (instance.meta?.toJson() case final value?) 'meta': value,
    };

_$DocEntityImpl _$$DocEntityImplFromJson(Map<String, dynamic> json) =>
    _$DocEntityImpl(
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

Map<String, dynamic> _$$DocEntityImplToJson(_$DocEntityImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.orderNumber case final value?) 'order_number': value,
      if (instance.place case final value?) 'place': value,
      if (instance.videoOne case final value?) 'video_one': value,
      if (instance.videoTwo case final value?) 'video_two': value,
      if (instance.thumbnailUrlOne case final value?)
        'thumbnail_url_one': value,
      if (instance.thumbnailUrlTwo case final value?)
        'thumbnail_url_two': value,
      if (instance.imageOne case final value?) 'image_one': value,
      if (instance.imageTwo case final value?) 'image_two': value,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.latitude case final value?) 'latitude': value,
      if (instance.longitude case final value?) 'longitude': value,
      if (instance.branchId case final value?) 'branch_id': value,
      if (instance.createdAt case final value?) 'created_at': value,
    };

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
      'docs': instance.docs,
      'meta': instance.meta,
    };

_$DocEntityImpl _$$DocEntityImplFromJson(Map<String, dynamic> json) =>
    _$DocEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      orderNumber: json['orderNumber'] as String?,
      place: json['place'] as String?,
      videoOne: json['videoOne'] as String?,
      videoTwo: json['videoTwo'] as String?,
      thumbnailUrlOne: json['thumbnailUrlOne'] as String?,
      thumbnailUrlTwo: json['thumbnailUrlTwo'] as String?,
      imageOne: json['imageOne'] as String?,
      imageTwo: json['imageTwo'] as String?,
      updatedAt: json['updatedAt'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      branchId: (json['branchId'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$DocEntityImplToJson(_$DocEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'place': instance.place,
      'videoOne': instance.videoOne,
      'videoTwo': instance.videoTwo,
      'thumbnailUrlOne': instance.thumbnailUrlOne,
      'thumbnailUrlTwo': instance.thumbnailUrlTwo,
      'imageOne': instance.imageOne,
      'imageTwo': instance.imageTwo,
      'updatedAt': instance.updatedAt,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'branchId': instance.branchId,
      'createdAt': instance.createdAt,
    };

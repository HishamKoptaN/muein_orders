// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatModel _$StatModelFromJson(Map<String, dynamic> json) => _StatModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  image: json['image'] as String?,
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$StatModelToJson(_StatModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'image': ?instance.image,
      'count': ?instance.count,
    };

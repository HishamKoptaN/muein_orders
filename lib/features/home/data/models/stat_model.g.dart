// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatModel _$StatModelFromJson(Map<String, dynamic> json) => _StatModel(
  id: (json['id'] as num?)?.toInt(),
  docsCount: (json['docs_count'] as num?)?.toInt(),
  subCategory: json['sub_category'] == null
      ? null
      : SubCategoryModel.fromJson(json['sub_category'] as Map<String, dynamic>),
  doc: json['doc'] == null
      ? null
      : DocModel.fromJson(json['doc'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatModelToJson(_StatModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'docs_count': ?instance.docsCount,
      'sub_category': ?instance.subCategory?.toJson(),
      'doc': ?instance.doc?.toJson(),
    };

_SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) =>
    _SubCategoryModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SubCategoryModelToJson(_SubCategoryModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'image': ?instance.image,
    };

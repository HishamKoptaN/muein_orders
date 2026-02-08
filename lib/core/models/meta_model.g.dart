// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetaModel _$MetaModelFromJson(Map<String, dynamic> json) => _MetaModel(
  currentPage: (json['current_page'] as num?)?.toInt(),
  totalPages: (json['total_pages'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  hasNextPage: json['has_next_page'] as bool?,
  hasPreviousPage: json['has_previous_page'] as bool?,
);

Map<String, dynamic> _$MetaModelToJson(_MetaModel instance) =>
    <String, dynamic>{
      'current_page': ?instance.currentPage,
      'total_pages': ?instance.totalPages,
      'per_page': ?instance.perPage,
      'has_next_page': ?instance.hasNextPage,
      'has_previous_page': ?instance.hasPreviousPage,
    };

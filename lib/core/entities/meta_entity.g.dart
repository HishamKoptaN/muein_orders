// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetaEntity _$MetaEntityFromJson(Map<String, dynamic> json) => _MetaEntity(
  total: (json['total'] as num?)?.toInt(),
  currentPage: (json['currentPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  hasNextPage: json['hasNextPage'] as bool?,
  hasPreviousPage: json['hasPreviousPage'] as bool?,
);

Map<String, dynamic> _$MetaEntityToJson(_MetaEntity instance) =>
    <String, dynamic>{
      'total': ?instance.total,
      'currentPage': ?instance.currentPage,
      'totalPages': ?instance.totalPages,
      'perPage': ?instance.perPage,
      'hasNextPage': ?instance.hasNextPage,
      'hasPreviousPage': ?instance.hasPreviousPage,
    };

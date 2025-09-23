// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      hasNextPage: json['has_next_page'] as bool?,
      hasPreviousPage: json['has_previous_page'] as bool?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      if (instance.currentPage case final value?) 'current_page': value,
      if (instance.totalPages case final value?) 'total_pages': value,
      if (instance.perPage case final value?) 'per_page': value,
      if (instance.hasNextPage case final value?) 'has_next_page': value,
      if (instance.hasPreviousPage case final value?)
        'has_previous_page': value,
    };

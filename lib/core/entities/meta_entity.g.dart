// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaEntityImpl _$$MetaEntityImplFromJson(Map<String, dynamic> json) =>
    _$MetaEntityImpl(
      postId: (json['postId'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalComments: (json['totalComments'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
    );

Map<String, dynamic> _$$MetaEntityImplToJson(_$MetaEntityImpl instance) =>
    <String, dynamic>{
      if (instance.postId case final value?) 'postId': value,
      if (instance.currentPage case final value?) 'currentPage': value,
      if (instance.totalPages case final value?) 'totalPages': value,
      if (instance.totalComments case final value?) 'totalComments': value,
      if (instance.perPage case final value?) 'perPage': value,
      if (instance.hasNextPage case final value?) 'hasNextPage': value,
      if (instance.hasPreviousPage case final value?) 'hasPreviousPage': value,
    };

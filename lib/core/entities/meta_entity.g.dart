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
      'postId': instance.postId,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'totalComments': instance.totalComments,
      'perPage': instance.perPage,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };

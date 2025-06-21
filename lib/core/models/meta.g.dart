// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      postId: (json['post_id'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalComments: (json['total_comments'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      hasNextPage: json['has_next_page'] as bool?,
      hasPreviousPage: json['has_previous_page'] as bool?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
      'total_comments': instance.totalComments,
      'per_page': instance.perPage,
      'has_next_page': instance.hasNextPage,
      'has_previous_page': instance.hasPreviousPage,
    };

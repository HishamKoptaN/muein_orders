import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_entity.freezed.dart';
part 'meta_entity.g.dart';

@freezed
class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    int? postId,
    int? currentPage,
    int? totalPages,
    int? totalComments,
    int? perPage,
    bool? hasNextPage,
    bool? hasPreviousPage,
  }) = _MetaEntity;
  factory MetaEntity.fromJson(Map<String, dynamic> json) =>
      _$MetaEntityFromJson(json);
}

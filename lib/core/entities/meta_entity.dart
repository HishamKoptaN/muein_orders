import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_entity.freezed.dart';

@freezed
abstract class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    int? total,
    int? currentPage,
    int? totalPages,
    int? perPage,
    bool? hasNextPage,
    bool? hasPreviousPage,
  }) = _MetaEntity;
}

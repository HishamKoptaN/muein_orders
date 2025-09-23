import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'has_next_page') bool? hasNextPage,
    @JsonKey(name: 'has_previous_page') bool? hasPreviousPage,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "post_id") int? postId,
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "total_pages") int? totalPages,
    @JsonKey(name: "total_comments") int? totalComments,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "has_next_page") bool? hasNextPage,
    @JsonKey(name: "has_previous_page") bool? hasPreviousPage,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

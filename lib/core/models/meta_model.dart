import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
abstract class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'has_next_page') bool? hasNextPage,
    @JsonKey(name: 'has_previous_page') bool? hasPreviousPage,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}

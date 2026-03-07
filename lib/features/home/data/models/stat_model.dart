import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../docs/data/models/docs_res_model.dart';
part 'stat_model.freezed.dart';
part 'stat_model.g.dart';

@freezed
abstract class StatModel with _$StatModel {
  const factory StatModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'docs_count') int? docsCount,
    @JsonKey(name: 'sub_category') SubCategoryModel? subCategory,
    @JsonKey(name: 'doc') DocModel? doc,
  }) = _StatModel;

  factory StatModel.fromJson(Map<String, Object?> json) =>
      _$StatModelFromJson(json);
}

@freezed
abstract class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, Object?> json) =>
      _$SubCategoryModelFromJson(json);
}

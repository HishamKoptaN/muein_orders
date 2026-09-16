import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../orders_features/docs/data/models/docs_res_model.dart';
part 'stat_model.freezed.dart';
part 'stat_model.g.dart';

@freezed
abstract class StatModel with _$StatModel {
  const factory StatModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'count') int? count,
  }) = _StatModel;

  factory StatModel.fromJson(Map<String, Object?> json) =>
      _$StatModelFromJson(json);
}

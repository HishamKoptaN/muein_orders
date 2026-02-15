import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta_model.dart';

part 'docs_res_model.freezed.dart';
part 'docs_res_model.g.dart';

@freezed
abstract class DocsResModel with _$DocsResModel {
  const factory DocsResModel({
    @JsonKey(name: 'docs') List<DocModel>? docs,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _DocsResModel;
  factory DocsResModel.fromJson(Map<String, dynamic> json) =>
      _$DocsResModelFromJson(json);
}

@freezed
abstract class DocModel with _$DocModel {
  const factory DocModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'video_one') String? videoOne,
    @JsonKey(name: 'video_two') String? videoTwo,
    @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
    @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
    @JsonKey(name: 'image_one') String? imageOne,
    @JsonKey(name: 'image_two') String? imageTwo,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'doc_status') DocStatusModel? docStatus,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _DocModel;

  factory DocModel.fromJson(Map<String, dynamic> json) =>
      _$DocModelFromJson(json);
}

@freezed
abstract class DocStatusModel with _$DocStatusModel {
  const factory DocStatusModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'text_color') String? textColor,
    @JsonKey(name: 'background_color') String? backgroundColor,
    @JsonKey(name: 'icon_color') String? iconColor,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _DocStatusModel;

  factory DocStatusModel.fromJson(Map<String, Object?> json) =>
      _$DocStatusModelFromJson(json);
}

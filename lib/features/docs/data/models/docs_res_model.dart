import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta_model.dart';

part 'docs_res_model.freezed.dart';
part 'docs_res_model.g.dart';

@freezed
abstract class DocsResModel with _$DocsResModel {
  const factory DocsResModel({
    @JsonKey(name: 'docs') List<Doc>? docs,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _DocsResModel;
  factory DocsResModel.fromJson(Map<String, dynamic> json) =>
      _$DocsResModelFromJson(json);
}

@freezed
abstract class Doc with _$Doc {
  const factory Doc({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'order_number') String? orderNumber,
    @JsonKey(name: 'place') String? place,
    @JsonKey(name: 'video_one') String? videoOne,
    @JsonKey(name: 'video_two') String? videoTwo,
    @JsonKey(name: 'thumbnail_url_one') String? thumbnailUrlOne,
    @JsonKey(name: 'thumbnail_url_two') String? thumbnailUrlTwo,
    @JsonKey(name: 'image_one') String? imageOne,
    @JsonKey(name: 'image_two') String? imageTwo,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'branch_id') int? branchId,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _Doc;

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);
}

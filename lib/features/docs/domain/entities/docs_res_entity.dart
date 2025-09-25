import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/entities/meta_entity.dart';

part 'docs_res_entity.freezed.dart';
part 'docs_res_entity.g.dart';

@freezed
class DocsResEntity with _$DocsResEntity {
  const factory DocsResEntity({
    @JsonKey(name: 'docs') List<DocEntity>? docs,
    @JsonKey(name: 'meta') MetaEntity? meta,
  }) = _DocsResEntity;

  factory DocsResEntity.fromJson(Map<String, dynamic> json) => _$DocsResEntityFromJson(json);
}

@freezed
class DocEntity with _$DocEntity {
  const factory DocEntity({
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
  }) = _DocEntity;

  factory DocEntity.fromJson(Map<String, dynamic> json) =>
      _$DocEntityFromJson(json);
}

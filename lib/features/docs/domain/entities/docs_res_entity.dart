import '../../../../core/entities/meta_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'docs_res_entity.freezed.dart';
part 'docs_res_entity.g.dart';

@freezed
class DocsResEntity with _$DocsResEntity {
  const factory DocsResEntity({
    List<DocEntity>? docs,
    MetaEntity? meta,
  }) = _DocsResEntity;

  factory DocsResEntity.fromJson(Map<String, dynamic> json) =>
      _$DocsResEntityFromJson(json);
}

@freezed
class DocEntity with _$DocEntity {
  const factory DocEntity({
    int? id,
    String? orderNumber,
    String? place,
    String? videoOne,
    String? videoTwo,
    String? thumbnailUrlOne,
    String? thumbnailUrlTwo,
    String? imageOne,
    String? imageTwo,
    String? updatedAt,
    String? latitude,
    String? longitude,
    int? branchId,
    String? createdAt,
  }) = _DocEntity;

  factory DocEntity.fromJson(Map<String, dynamic> json) =>
      _$DocEntityFromJson(json);
}

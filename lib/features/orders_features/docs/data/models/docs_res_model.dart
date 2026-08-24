import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta_model.dart';

part 'docs_res_model.freezed.dart';
part 'docs_res_model.g.dart';

@freezed
abstract class DocsResModel with _$DocsResModel {
  const factory DocsResModel({
    @Default([]) @JsonKey(name: 'docs') List<DocModel> docs,
    @Default(MetaModel()) @JsonKey(name: 'meta') MetaModel meta,
  }) = _DocsResModel;
  factory DocsResModel.fromJson(Map<String, dynamic> json) =>
      _$DocsResModelFromJson(json);
}

@freezed
abstract class DocModel with _$DocModel {
  const factory DocModel({
    @Default(-1) @JsonKey(name: 'id') int id,
    @Default(-1) @JsonKey(name: 'unit_id') int unitId,
    @Default([]) @JsonKey(name: 'media') List<DocMediaModel> files,
    @Default('') @JsonKey(name: 'latitude') String latitude,
    @Default('') @JsonKey(name: 'longitude') String longitude,
    @Default(DocStatusModel())
    @JsonKey(name: 'doc_status')
    DocStatusModel docStatus,
    @Default(0) @JsonKey(name: 'copies_count') int copiesCount,
    @Default('') @JsonKey(name: 'reviewed_by') String reviewedBy,
    @Default('') @JsonKey(name: 'reviewed_at') String reviewedAt,
    @Default('') @JsonKey(name: 'admin_notes') String adminNotes,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _DocModel;

  factory DocModel.fromJson(Map<String, dynamic> json) =>
      _$DocModelFromJson(json);
}

@freezed
abstract class DocStatusModel with _$DocStatusModel {
  const factory DocStatusModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'text_color') String textColor,
    @Default('') @JsonKey(name: 'background_color') String backgroundColor,
    @Default('') @JsonKey(name: 'icon_color') String iconColor,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _DocStatusModel;
  factory DocStatusModel.fromJson(Map<String, Object?> json) =>
      _$DocStatusModelFromJson(json);
}

@freezed
abstract class DocMediaModel with _$DocMediaModel {
  const factory DocMediaModel({
    @Default(0) int id,
    @Default(0) @JsonKey(name: 'documentation_id') int documentationId,
    @Default('') @JsonKey(name: 'file_path') String filePath,
    @Default('') String thumbnail,
    @Default('') @JsonKey(name: 'file_type') String fileType,
    @Default(0) int sequence,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _DocMediaModel;
  factory DocMediaModel.fromJson(Map<String, Object?> json) =>
      _$DocMediaModelFromJson(json);
}

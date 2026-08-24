import 'package:freezed_annotation/freezed_annotation.dart';
import '../datasources/local_data_src/drift/tables/items_table.dart';
part 'cached_doc_model.freezed.dart';
part 'cached_doc_model.g.dart';

@freezed
abstract class CachedDocModel with _$CachedDocModel {
  const factory CachedDocModel({
    @Default(0) int id,
    @Default([]) List<CachedDocMediaModel> files,
    LocationDocModel? location,
    @Default(UploadStatus.pending) UploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
  }) = _CachedDocModel;

  factory CachedDocModel.fromJson(Map<String, dynamic> json) =>
      _$CachedDocModelFromJson(json);
}

@freezed
abstract class LocationDocModel with _$LocationDocModel {
  const factory LocationDocModel({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(UploadStatus.init) UploadStatus status,
  }) = _LocationDocModel;

  factory LocationDocModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDocModelFromJson(json);
}

@freezed
abstract class CachedDocMediaModel with _$CachedDocMediaModel {
  const factory CachedDocMediaModel({
    @Default(0) int id,
    @Default(0) int docId,
    @Default(DocMediaType.image) DocMediaType type,
    @Default(0) int sequence,
    @Default('') String path,
    @Default('') String remoteUrl,
    @Default(UploadStatus.init) UploadStatus status,
  }) = _CachedDocMediaModel;

  factory CachedDocMediaModel.fromJson(Map<String, dynamic> json) =>
      _$CachedDocMediaModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../datasources/local/drift/app_database.dart';
import '../datasources/local/drift/cached_docs_table.dart';

part 'cached_doc_model.freezed.dart';
part 'cached_doc_model.g.dart';

@freezed
abstract class CachedDocModel with _$CachedDocModel {
  const factory CachedDocModel({
    int? docId,
    List<DocFile>? files,
    LocationDoc? location,
    @Default(FileUploadStatus.pending) FileUploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
  }) = _CachedDocModel;

  factory CachedDocModel.fromJson(Map<String, dynamic> json) =>
      _$CachedDocModelFromJson(json);
}

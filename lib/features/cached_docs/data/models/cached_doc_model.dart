import 'package:freezed_annotation/freezed_annotation.dart';

import '../datasources/local/drift/app_database.dart';
import '../datasources/local/drift/cached_docs_table.dart';

part 'cached_doc_model.freezed.dart';
part 'cached_doc_model.g.dart';

@freezed
abstract class CachedDocModel with _$CachedDocModel {
  const factory CachedDocModel({
    int? docId,
    DocFile? imageOne,
    DocFile? imageTwo,
    DocFile? videoOne,
    DocFile? videoTwo,
    LocationDoc? location,
    @Default(FileUploadStatus.pending) FileUploadStatus uploadStatus,
    @Default(0.0) double uploadProgress,
  }) = _CachedDocModel;
  factory CachedDocModel.fromDb(CachedDocEntry data) {
    return CachedDocModel(
      docId: data.docId,
      imageOne: data.imageOne,
      imageTwo: data.imageTwo,
      videoOne: data.videoOne,
      videoTwo: data.videoTwo,
      location: data.location,
      uploadStatus: FileUploadStatus.values.firstWhere(
        (e) => e.name == data.uploadStatus,
        orElse: () => FileUploadStatus.pending,
      ),
      uploadProgress: data.uploadProgress,
    );
  }
  factory CachedDocModel.fromJson(Map<String, dynamic> json) =>
      _$CachedDocModelFromJson(json);
}

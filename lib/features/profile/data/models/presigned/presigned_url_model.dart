import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'presigned_url_model.freezed.dart';
part 'presigned_url_model.g.dart';

@freezed
abstract class PresignedUrlModel with _$PresignedUrlModel {
  const factory PresignedUrlModel({
    @JsonKey(name: 'upload_url') String? uploadUrl,
    @JsonKey(name: 'file_path') String? filePath,
    @JsonKey(name: 'content_type') String? contentType,
  }) = _PresignedUrlModel;

  factory PresignedUrlModel.fromJson(Map<String, Object?> json) =>
      _$PresignedUrlModelFromJson(json);
}

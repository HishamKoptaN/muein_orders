import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_upload_model.freezed.dart';
part 's3_upload_model.g.dart';

@freezed
abstract class S3UploadModel with _$S3UploadModel {
  const factory S3UploadModel({
    @JsonKey(name: 'upload_url') required String uploadUrl,
    @JsonKey(name: 'file_path') required String filePath,
    @JsonKey(name: 'content_type') required String contentType,
  }) = _S3UploadModel;

  factory S3UploadModel.fromJson(Map<String, dynamic> json) =>
      _$S3UploadModelFromJson(json);
}

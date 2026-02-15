// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_upload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_S3UploadModel _$S3UploadModelFromJson(Map<String, dynamic> json) =>
    _S3UploadModel(
      uploadUrl: json['upload_url'] as String,
      filePath: json['file_path'] as String,
      contentType: json['content_type'] as String,
    );

Map<String, dynamic> _$S3UploadModelToJson(_S3UploadModel instance) =>
    <String, dynamic>{
      'upload_url': instance.uploadUrl,
      'file_path': instance.filePath,
      'content_type': instance.contentType,
    };

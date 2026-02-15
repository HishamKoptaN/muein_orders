// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_url_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresignedUrlModel _$PresignedUrlModelFromJson(Map<String, dynamic> json) =>
    _PresignedUrlModel(
      uploadUrl: json['upload_url'] as String?,
      filePath: json['file_path'] as String?,
      contentType: json['content_type'] as String?,
    );

Map<String, dynamic> _$PresignedUrlModelToJson(_PresignedUrlModel instance) =>
    <String, dynamic>{
      'upload_url': ?instance.uploadUrl,
      'file_path': ?instance.filePath,
      'content_type': ?instance.contentType,
    };

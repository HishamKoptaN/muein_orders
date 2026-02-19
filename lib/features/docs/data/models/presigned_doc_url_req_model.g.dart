// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_doc_url_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresignedDocUrlReqModel _$PresignedDocUrlReqModelFromJson(
  Map<String, dynamic> json,
) => _PresignedDocUrlReqModel(
  docId: (json['doc_id'] as num?)?.toInt(),
  fileType: json['file_type'] as String?,
  extension: json['extension'] as String?,
);

Map<String, dynamic> _$PresignedDocUrlReqModelToJson(
  _PresignedDocUrlReqModel instance,
) => <String, dynamic>{
  'doc_id': ?instance.docId,
  'file_type': ?instance.fileType,
  'extension': ?instance.extension,
};

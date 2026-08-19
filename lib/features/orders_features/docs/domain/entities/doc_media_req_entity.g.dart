// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_media_req_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocMediaReqEntity _$DocMediaReqEntityFromJson(Map<String, dynamic> json) =>
    _DocMediaReqEntity(
      docId: (json['docId'] as num).toInt(),
      filePath: json['filePath'] as String,
      thumbnail: json['thumbnail'] as String,
      fileType: $enumDecode(_$FileTypeEnumMap, json['fileType']),
    );

Map<String, dynamic> _$DocMediaReqEntityToJson(_DocMediaReqEntity instance) =>
    <String, dynamic>{
      'docId': instance.docId,
      'filePath': instance.filePath,
      'thumbnail': instance.thumbnail,
      'fileType': _$FileTypeEnumMap[instance.fileType]!,
    };

const _$FileTypeEnumMap = {FileType.image: 'image', FileType.video: 'video'};

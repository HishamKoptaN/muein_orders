// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocsResModel _$DocsResModelFromJson(Map<String, dynamic> json) =>
    _DocsResModel(
      docs:
          (json['docs'] as List<dynamic>?)
              ?.map((e) => DocModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const MetaModel()
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocsResModelToJson(_DocsResModel instance) =>
    <String, dynamic>{
      'docs': instance.docs.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

_DocModel _$DocModelFromJson(Map<String, dynamic> json) => _DocModel(
  id: (json['id'] as num?)?.toInt() ?? -1,
  files:
      (json['media'] as List<dynamic>?)
          ?.map((e) => DocMediaModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  latitude: json['latitude'] as String? ?? '',
  longitude: json['longitude'] as String? ?? '',
  docStatus: json['doc_status'] == null
      ? const DocStatusModel()
      : DocStatusModel.fromJson(json['doc_status'] as Map<String, dynamic>),
  copiesCount: (json['copies_count'] as num?)?.toInt() ?? 0,
  reviewedBy: json['reviewed_by'] as String? ?? '',
  reviewedAt: json['reviewed_at'] as String? ?? '',
  adminNotes: json['admin_notes'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
  updatedAt: json['updated_at'] as String? ?? '',
);

Map<String, dynamic> _$DocModelToJson(_DocModel instance) => <String, dynamic>{
  'id': instance.id,
  'media': instance.files.map((e) => e.toJson()).toList(),
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'doc_status': instance.docStatus.toJson(),
  'copies_count': instance.copiesCount,
  'reviewed_by': instance.reviewedBy,
  'reviewed_at': instance.reviewedAt,
  'admin_notes': instance.adminNotes,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

_DocStatusModel _$DocStatusModelFromJson(Map<String, dynamic> json) =>
    _DocStatusModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      textColor: json['text_color'] as String? ?? '',
      backgroundColor: json['background_color'] as String? ?? '',
      iconColor: json['icon_color'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$DocStatusModelToJson(_DocStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'text_color': instance.textColor,
      'background_color': instance.backgroundColor,
      'icon_color': instance.iconColor,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_DocMediaModel _$DocMediaModelFromJson(Map<String, dynamic> json) =>
    _DocMediaModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      documentationId: (json['documentation_id'] as num?)?.toInt() ?? 0,
      filePath: json['file_path'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      fileType: json['file_type'] as String? ?? '',
      sequence: (json['sequence'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$DocMediaModelToJson(_DocMediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentation_id': instance.documentationId,
      'file_path': instance.filePath,
      'thumbnail': instance.thumbnail,
      'file_type': instance.fileType,
      'sequence': instance.sequence,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

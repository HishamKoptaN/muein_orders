import 'package:flutter/material.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../domain/entities/doc_entity.dart';
import '../../domain/entities/doc_req_entity.dart';
import '../../domain/entities/doc_status_entity.dart';
import '../models/doc_req_model.dart';
import '../models/docs_res_model.dart';

extension DocSallaMapper on DocModel {
  DocEntity toEntity() {
    return DocEntity(
      id: id,
      files: files.map((e) {
        return e.toEntity();
      }).toList(),
    );
  }
}

extension DocMediaModelMapper on DocMediaModel {
  DocMediaEntity toEntity() {
    return DocMediaEntity(
      id: id,
      filePath: filePath,
      docMediaType: fileType == 'video' ? .video : .image,
      docId: documentationId,
      thumbnail: thumbnail,
      sequence: sequence,
      fileUploadStatus: .init,
    );
  }
}

extension DocStatusModelMapper on DocStatusModel {
  DocStatusEntity toEntity() {
    return DocStatusEntity(
      id: id,
      name: name,
      textColor: _hexToColor(textColor),
      backgroundColor: _hexToColor(backgroundColor),
    );
  }

  Color _hexToColor(String? hex) {
    if (hex == null || hex.isEmpty) return Colors.transparent;
    return Color(int.parse(hex.replaceFirst('#', '0xff')));
  }
}

extension CachedDocEntryMapper on DocEntry {
  DocReqEntity toCreateEntity() {
    return DocReqEntity(id: id, files: [], location: const LocationDocEntity());
  }
}

extension DocMediaReqEntityMapper on DocMediaReqEntity {
  DocMediaReqModel toModel() {
    return DocMediaReqModel(
      id: id,
      docId: docId,
      filePath: filePath,
      thumbnail: thumbnail,
      fileType: fileType.name,
    );
  }
}
 // factory DocStatusEntity.fromJson(Map<String, dynamic> json) {
  //   return DocStatusEntity(
  //     id: json['id'],
  //     name: json['name'],
  //     textColor: json['text_color'] != null
  //         ? _colorFromString(json['text_color'])
  //         : null,
  //     backgroundColor: json['background_color'] != null
  //         ? _colorFromString(json['background_color'])
  //         : null,
  //     iconColor: json['icon_color'] != null
  //         ? _colorFromString(json['icon_color'])
  //         : null,
  //     createdAt: json['created_at'],
  //     updatedAt: json['updated_at'],
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'text_color': textColor?.value
  //         .toRadixString(16)
  //         .padLeft(8, '0')
  //         .replaceFirst('ff', '#'),
  //     'background_color': backgroundColor?.value
  //         .toRadixString(16)
  //         .padLeft(8, '0')
  //         .replaceFirst('ff', '#'),
  //     'icon_color': iconColor?.value
  //         .toRadixString(16)
  //         .padLeft(8, '0')
  //         .replaceFirst('ff', '#'),
  //     'created_at': createdAt,
  //     'updated_at': updatedAt,
  //   };
  // }

  // static Color? _colorFromString(String? colorString) {
  //   if (colorString == null) return null;
  //   try {
  //     return Color(int.parse(colorString.replaceFirst('#', '0xFF')));
  //   } catch (e) {
  //     return null;
  //   }
  // }
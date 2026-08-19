import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import 'doc_status_entity.dart';
part 'doc_status_entity.freezed.dart';

@freezed
abstract class DocStatusEntity with _$DocStatusEntity {
  const DocStatusEntity._();
  const factory DocStatusEntity({
    @Default(0) int id,
    @Default('0') String name,
    @Default(Colors.transparent) Color textColor,
    @Default(Colors.transparent) Color backgroundColor,
    @Default(Colors.transparent) Color iconColor,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _DocStatusEntity;
}

// class DocStatusEntity {
//   final int? id;
//   final String? ;
//
//   DocStatusEntity({
//     this.id,
//     this.name,
//     this.textColor,
//     this.backgroundColor,
//     this.iconColor,
//     this.createdAt,
//     this.updatedAt,
//   });
//   DocStatusEntity copyWith({
//     int? id,
//     String? name,
//     Color? textColor,
//     Color? backgroundColor,
//     Color? iconColor,
//     String? createdAt,
//     String? updatedAt,
//   }) => DocStatusEntity(
//     id: id ?? this.id,
//     name: name ?? this.name,
//     textColor: textColor ?? this.textColor,
//     backgroundColor: backgroundColor ?? this.backgroundColor,
//     iconColor: iconColor ?? this.iconColor,
//     createdAt: createdAt ?? this.createdAt,
//     updatedAt: updatedAt ?? this.updatedAt,
//   );

//   factory DocStatusEntity.fromJson(Map<String, dynamic> json) {
//     return DocStatusEntity(
//       id: json['id'],
//       name: json['name'],
//       textColor: json['text_color'] != null
//           ? _colorFromString(json['text_color'])
//           : null,
//       backgroundColor: json['background_color'] != null
//           ? _colorFromString(json['background_color'])
//           : null,
//       iconColor: json['icon_color'] != null
//           ? _colorFromString(json['icon_color'])
//           : null,
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'text_color': textColor?.value
//           .toRadixString(16)
//           .padLeft(8, '0')
//           .replaceFirst('ff', '#'),
//       'background_color': backgroundColor?.value
//           .toRadixString(16)
//           .padLeft(8, '0')
//           .replaceFirst('ff', '#'),
//       'icon_color': iconColor?.value
//           .toRadixString(16)
//           .padLeft(8, '0')
//           .replaceFirst('ff', '#'),
//       'created_at': createdAt,
//       'updated_at': updatedAt,
//     };
//   }

//   static Color? _colorFromString(String? colorString) {
//     if (colorString == null) return null;
//     try {
//       return Color(int.parse(colorString.replaceFirst('#', '0xFF')));
//     } catch (e) {
//       return null;
//     }
//   }
// }

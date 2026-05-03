import 'dart:io';

import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../data/datasources/local/drift/app_database.dart';
import '../../data/datasources/local/drift/cached_docs_table.dart';
import 'cached_doc_entity.dart';

part 'create_cached_doc_entity.freezed.dart';

@freezed
abstract class CreateCachedDocEntity with _$CreateCachedDocEntity {
  const CreateCachedDocEntity._();
  const factory CreateCachedDocEntity({
    GenericFormzInput<int>? docId,
    @Default([]) List<DocFileEntity> files,
    LocationEntity? location,
  }) = _CreateCachedDocEntity;
  Map<String, dynamic> toDebugMap() {
    return {
      'docId': docId?.value,
      'location': {
        'latitude': location?.latitude,
        'longitude': location?.longitude,
      },
      'files': files.map((e) {
        return {
          'path': e.docFile?.path ?? e.file?.value?.path,
          'status': e.docFileStatus.name,
        };
      }).toList(),
    };
  }

  factory CreateCachedDocEntity.fromDebugMap(Map<String, dynamic> map) {
    return CreateCachedDocEntity(
      docId: GenericFormzInput.dirty(map['docId'] ?? 0),
      location: LocationEntity(
        latitude: map['location']['latitude'],
        longitude: map['location']['longitude'],
      ),
      files: (map['files'] as List).map((f) {
        final path = f['path'] as String?;
        return DocFileEntity(
          file: path != null ? FileFormzInput.dirty(File(path)) : null,
          docFile: path != null
              ? DocFile(path: path, type: DocFileType.image_one)
              : null,
          docFileStatus: FileUploadStatus.values.firstWhere(
            (e) => e.name == f['status'],
          ),
        );
      }).toList(),
    );
  }
  CachedDocsTableCompanion toCachedDocsTableCompanion() {
    final convertedFiles = files
        .map((entity) {
          return entity.docFile ??
              (entity.file?.value != null
                  ? DocFile(
                      path: entity.file!.value!.path,
                      type: DocFileType.image_one,
                      status: FileUploadStatus.pending,
                    )
                  : null);
        })
        .whereType<DocFile>()
        .toList();
    return CachedDocsTableCompanion(
      docId: Value(docId?.value ?? 0),
      files: convertedFiles.isNotEmpty
          ? Value(convertedFiles)
          : const Value.absent(),
      location: location != null
          ? Value(location?.toLocationDoc())
          : const Value.absent(),

      uploadStatus: Value(FileUploadStatus.pending.name),
    );
  }

  CachedDocEntity toCachedDocEntity() {
    return CachedDocEntity(
      docId: docId?.value ?? 0,
      files: files.map((file) => file.docFile).whereType<DocFile>().toList(),
      location:
          location?.toLocationDoc() ??
          LocationDoc(latitude: 0.0, longitude: 0.0),
    );
  }

  bool hasChanged({required CachedDocEntity? original}) {
    if (original == null) {
      final bool hasFiles = files.any(
        (f) => f.file?.value != null || f.docFile != null,
      );
      final bool hasLocation = location?.latitude != null;
      return hasFiles || hasLocation;
    }
    final currentFilesCount = files.length;
    final originalFilesCount = original.files?.length ?? 0;
    if (currentFilesCount != originalFilesCount) return true;
    for (int i = 0; i < files.length; i++) {
      final currentPath = files[i].docFile?.path ?? files[i].file?.value?.path;
      final originalPath = original.files?[i].path;
      if (currentPath != originalPath) return true;
    }
    final latitudeChanged = location?.latitude != original.location?.latitude;
    final longitudeChanged =
        location?.longitude != original.location?.longitude;
    if (latitudeChanged || longitudeChanged) return true;
    return false;
  }
}

@freezed
abstract class DocFileEntity with _$DocFileEntity {
  const factory DocFileEntity({
    FileFormzInput? file,
    DocFile? docFile,
    @Default(FileUploadStatus.init) FileUploadStatus docFileStatus,
  }) = _DocFileEntity;
}

@freezed
abstract class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    double? latitude,
    double? longitude,
    @Default(FileUploadStatus.init) FileUploadStatus status,
  }) = _LocationEntity;

  const LocationEntity._();
  bool get hasData => latitude != null && longitude != null;
  LocationDoc toLocationDoc() {
    return LocationDoc(latitude: latitude, longitude: longitude);
  }
}

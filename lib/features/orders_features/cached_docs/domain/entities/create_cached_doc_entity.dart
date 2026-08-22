import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/foundation.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../data/datasources/local_data_src/drift/app_database.dart';
import '../../data/datasources/local_data_src/drift/tables/docs_table.dart';
import 'cached_doc_entity.dart';
part 'create_cached_doc_entity.freezed.dart';

@freezed
abstract class CreateCachedDocEntity with _$CreateCachedDocEntity {
  const CreateCachedDocEntity._();
  const factory CreateCachedDocEntity({
    GenericFormInput? docId,
    @Default(<DocMediaEntity>[]) List<DocMediaEntity> files,
    LocationEntity? location,
  }) = _CreateCachedDocEntity;

  DocsTableCompanion toCachedDocsTableCompanion() {
    final convertedFiles = files
        .map((entity) {
          return entity;
        })
        .whereType<DocMediaEntity>()
        .toList();
    return DocsTableCompanion(
      id: Value(int.tryParse(docId?.value ?? '') ?? 0),

      // docMediafiles: convertedFiles.isNotEmpty
      //     ? Value(convertedFiles)
      //     : const Value.absent(),
      // location: location != null
      //     ? Value(location?.toLocationDoc())
      //     : const Value.absent(),
      //uploadStatus: Value(UploadStatus.pending.name),
    );
  }

  bool hasChanged({required DocEntity? original}) {
    if (original == null) {
      // final bool hasFiles = files.any((f) {
      //   return f.file?.value != null || f != null;
      // });
      // final bool hasLocation = location?.latitude != null;
      // return hasFiles || hasLocation;
    }
    // final currentFilesCount = files.length;
    // final originalFilesCount = original.files.length ?? 0;
    // if (currentFilesCount != originalFilesCount) return true;
    // for (int i = 0; i < files.length; i++) {
    //   final currentPath =
    //       files[i].docFile?.docFile?.file?.value?.path ??
    //       files[i].file?.value?.path;
    //   final originalPath = original.files[i].path;
    //   if (currentPath != originalPath) return true;
    // }
    // final latitudeChanged = location?.latitude != original.location.latitude;
    // final longitudeChanged = location?.longitude != original.location.longitude;
    // if (latitudeChanged || longitudeChanged) return true;
    return false;
  }
}

@freezed
abstract class LocationEntity with _$LocationEntity {
  const LocationEntity._();
  const factory LocationEntity({
    double? latitude,
    double? longitude,
    @Default(UploadStatus.init) UploadStatus fileUploadStatus,
  }) = _LocationEntity;

  bool get hasData {
    return latitude != null && longitude != null;
  }

  LocationEntity toLocationDoc() {
    return LocationEntity(latitude: latitude, longitude: longitude);
  }
}

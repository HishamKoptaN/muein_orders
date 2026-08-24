import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../data/datasources/local_data_src/drift/tables/items_table.dart';
part 'create_cached_doc_entity.freezed.dart';

@freezed
abstract class CreateCachedDocEntity with _$CreateCachedDocEntity {
  const CreateCachedDocEntity._();
  const factory CreateCachedDocEntity({
    int? id,
    int? itemId,
    int? unitId,
    @Default(<DocMediaEntity>[]) List<DocMediaEntity> files,
    double? latitude,
    double? longitude,
    @Default(UploadStatus.init) UploadStatus locationUploadStatus,
  }) = _CreateCachedDocEntity;

  bool hasChanged({required DocEntity? original}) {
    if (original == null) {
      final bool hasFiles = files.any((f) {
        return f.filePath.isNotEmpty;
      });
      final bool hasLocation = latitude != null;
      return hasFiles || hasLocation;
    }
    final currentFilesCount = files.length;
    final originalFilesCount = original.files.length;
    if (currentFilesCount != originalFilesCount) return true;
    for (int i = 0; i < files.length; i++) {
      final currentPath = files[i].filePath;
      final originalPath = original.files[i].filePath;
      if (currentPath != originalPath) return true;
    }
    final latitudeChanged = latitude != original.latitude;
    final longitudeChanged = longitude != original.longitude;
    if (latitudeChanged || longitudeChanged) return true;
    return false;
  }
}

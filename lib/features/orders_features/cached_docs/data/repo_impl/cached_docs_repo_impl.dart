import 'dart:async';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../../domain/repo/cached_docs_repo.dart';
import '../datasources/local_data_src/drift/app_database.dart';
import '../datasources/local_data_src/drift/tables/items_table.dart';
import '../mappers/cached_doc_mapper.dart';

@Singleton(as: CachedDocsRepo)
class CachedDocsRepoImpl implements CachedDocsRepo {
  final AppDatabase _db;
  final Location location = Location();
  CachedDocsRepoImpl(this._db);
  @override
  Future<ExecuteGuard<List<DocEntity>>> getPendings() async {
    final query = _db.select(_db.docsTable)
      ..where((tbl) {
        return tbl.uploadStatus.isIn([
          UploadStatus.pending.name,
          UploadStatus.uploading.name,
          UploadStatus.failed.name,
        ]);
      });
    return ExecuteGuard.success(
      data: (await query.get()).map((r) {
        return r.toDocEntity();
      }).toList(),
    );
  }

  @override
  Future<ExecuteGuard<void>> cachedDoc({
    required CreateCachedDocEntity createCachedDoc,
  }) async {
    try {
      await _db.transaction(() async {
        await _db.itemsDao.upsert(
          ItemsTableCompanion(id: Value(createCachedDoc.itemId ?? 0)),
        );
        await _db.unitsDao.upsert(
          unit: ItemUnitsTableCompanion(
            id: Value(createCachedDoc.unitId ?? 0),
            itemId: Value(createCachedDoc.itemId ?? 0),
          ),
        );
        await _db.docsDao.upsert(
          doc: DocsTableCompanion(
            id: Value(createCachedDoc.id ?? 0),
            unitId: Value(createCachedDoc.unitId ?? 0),
            latitude: Value(double.tryParse(createCachedDoc.latitude.value)),
            longitude: Value(double.tryParse(createCachedDoc.longitude.value)),
            locationUploadStatus: Value(UploadStatus.pending.name),
            uploadStatus: Value(UploadStatus.pending.name),
          ),
        );
        for (final docMedia in createCachedDoc.files.where((e) {
          return e.isEdited;
        })) {
          await _db.docMediaDao.upsert(
            DocMediaTableCompanion(
              id: Value(docMedia.id ?? 0),
              docId: Value(createCachedDoc.id ?? 0),
              localFilePath: Value(docMedia.localFilePath.value),
              uploadStatus: Value(UploadStatus.pending.name),
            ),
          );
        }
      });
      return const ExecuteGuard.success(data: null);
    } catch (e, st) {
      return ExecuteGuard.failure(errorInfo: ErrorInfo(message: e.toString()));
    }
  }
}

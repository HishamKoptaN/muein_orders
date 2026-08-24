import 'dart:async';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
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
  Future<({double lat, double lng})> getCurrentLocation() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) throw Exception('Location service disabled');
    }
    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == .denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != .granted) {
        throw Exception('Location permission not granted');
      }
    }

    final locationData = await location.getLocation();
    return (lat: locationData.latitude, lng: locationData.longitude);
  }

  @override
  Future<ApiResult<List<DocEntity>>> getPendings() async {
    final query = _db.select(_db.docsTable)
      ..where((tbl) {
        return tbl.uploadStatus.isIn([
          UploadStatus.pending.name,
          UploadStatus.uploading.name,
          UploadStatus.failed.name,
        ]);
      });
    return ApiResult.success(
      data: (await query.get()).map((r) {
        return r.toDocEntity();
      }).toList(),
    );
  }

  @override
  Future<ApiResult<void>> cachedDoc({
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
            uploadStatus: Value(UploadStatus.pending.name),
          ),
        );
        for (final docMedia in createCachedDoc.files.where((e) {
          return e.isEdited;
        })) {
          await _db.docMediaDao.upsert(
            DocMediaTableCompanion(
              id: Value(docMedia.id),
              docId: Value(createCachedDoc.id ?? 0),
              localFilePath: Value(docMedia.localFilePath),
              uploadStatus: Value(UploadStatus.pending.name),
            ),
          );
        }
      });
      return const ApiResult.success(data: null);
    } catch (e, st) {
      return ApiResult.failure(errorInfo: ErrorInfo(message: e.toString()));
    }
  }

  @override
  Future<ApiResult<void>> updateProgress({
    required int id,
    required UploadStatus status,
    required double? progress,
  }) async {
    try {
      // await _db
      //     .update(_db.cachedDocsTable)
      //     .replace(
      //       CachedDocModel(
      //         docId: docId,
      //         sallaOrderId: docId,
      //         docId: docId,
      //         uploadStatus: status.name,
      //         uploadProgress: progress!,
      //       ),
      //     );
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(errorInfo: ErrorInfo(message: e.toString()));
    }
  }

  @override
  Future<bool> orderMatchesStatus({
    required int id,
    required UploadStatus status,
  }) async {
    try {
      final result =
          await (_db.select(_db.docsTable)..where((tbl) {
                return tbl.id.equals(id);
              }))
              .get();
      if (result.isEmpty) return status == UploadStatus.init;
      final cachedDoc = result.first;
      //if (cachedDoc.uploadStatus == status.name) return true;
      // if (cachedDoc.files != null) {
      //   for (final file in cachedDoc.files!) {
      //     if (file.status == status) return true;
      //   }
      // }
      // if (cachedDoc.location?.status == status) return true;
      return false;
    } catch (e) {
      return false;
    }
  }
}

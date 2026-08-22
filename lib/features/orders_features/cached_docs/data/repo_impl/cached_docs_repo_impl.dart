import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import '../../../../../core/errors/handlers/api_error_handler/error_handler.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../../domain/repo/cached_docs_repo.dart';
import '../datasources/local_data_src/drift/app_database.dart';
import '../datasources/local_data_src/drift/tables/docs_table.dart';
import '../mappers/cached_doc_mapper.dart';

@Singleton(as: CachedDocsRepo)
class CachedDocsRepoImpl implements CachedDocsRepo {
  final AppDatabase _db;
  final Location location = Location();
  CachedDocsRepoImpl(this._db);

  @override
  Stream<DocEntity> watchDoc({required int id}) {
    return _db.watchDoc(id: id);
  }

  @override
  Future<ApiResult<DocEntity>> getCachedDoc({required int id}) async {
    try {
      final row = await _db.getCachedDoc(id: id);
      if (row == null) return const ApiResult.success(data: null);
      return ApiResult.success(data: row.toEntity());
    } catch (error) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<({double lat, double lng})> getCurrentLocation() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) throw Exception('Location service disabled');
    }
    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        throw Exception('Location permission not granted');
      }
    }

    final locationData = await location.getLocation();
    return (lat: locationData.latitude!, lng: locationData.longitude!);
  }

  @override
  Future<ApiResult<void>> cachedDoc({
    required CreateCachedDocEntity doc,
  }) async {
    // debugPrint('=== DEBUG: Repo cachedDoc START ===');
    // debugPrint('Doc files count: ${doc.files.length}');

    // for (int i = 0; i < doc.files.length; i++) {
    //   final file = doc.files[i];
    //   debugPrint(
    //     'Repo File $i: path=${file.docFile?.path}, status=${file.docFileStatus}, hasFile=${file.file != null}',
    //   );
    // }

    try {
      // final companion = doc.toCachedDocsTableCompanion();
      // debugPrint('Table companion: ${companion.toString()}');

      // await _db.cachedDoc(cachedDocsTableCompanion: companion);

      // debugPrint('Database save successful!');
      return const ApiResult.success(data: null);
    } catch (e) {
      debugPrint('Database save failed: $e');
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
      if (cachedDoc.location?.status == status) return true;
      return false;
    } catch (e) {
      return false;
    }
  }
}

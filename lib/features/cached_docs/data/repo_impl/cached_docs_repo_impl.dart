import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/cached_doc_entity.dart';
import '../../domain/repo/cached_docs_repo.dart';
import '../datasources/local/drift/app_database.dart';
import '../datasources/local/drift/cached_docs_table.dart';
import '../mappers/cached_doc_mapper.dart';

@Singleton(as: CachedDocsRepo)
class CachedDocsRepoImpl implements CachedDocsRepo {
  final AppDatabase _db;
  final Location location = Location();
  CachedDocsRepoImpl(this._db);

  @override
  Stream<CachedDocEntity?> watchDoc(int docId) {
    // return (_db.select(_db.cachedDocsTable)
    //       ..where((t) => t.docId.equals(orderId)))
    //     .watchSingleOrNull()
    //     .map((doc) => doc?.toEntity());
    return const Stream<CachedDocEntity?>.empty();
  }

  @override
  Future<ApiResult<CachedDocEntity>> getCachedDoc({required int docId}) async {
    try {
      final row = await _db.getCachedDoc(docId: docId);
      if (row == null) return const ApiResult.success(data: null);
      return ApiResult.success(data: row.toEntity());
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
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
  Future<ApiResult<void>> cachedDoc({required CachedDocEntity doc}) async {
    try {
      await _db.cachedDoc(doc: doc);
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
    }
  }

  @override
  Future<ApiResult<void>> updateProgress({
    required int docId,
    required FileUploadStatus status,
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
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
    }
  }
}

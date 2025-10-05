import 'dart:async';

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import '../../../../core/error/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/cached_doc_entity.dart';
import '../../domain/repo/cached_docs_repo.dart';
import '../datasources/local/drift/app_database.dart';
import '../datasources/local/drift/mappers.dart';

@LazySingleton(as: CachedDocsRepo)
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
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        throw Exception('Location permission not granted');
      }
    }

    final locationData = await location.getLocation();
    return (
      lat: locationData.latitude!,
      lng: locationData.longitude!,
    );
  }

  @override
  Future<ApiResult<void>> cachedDoc({required CachedDocEntity doc}) async {
    try {
      await _db.insertDoc(
        doc: CachedDocsCompanion.insert(
          orderId: doc.orderId ?? 0,
          imageOne: Value(doc.imageOne),
          imageTwo: Value(doc.imageTwo),
          videoOne: Value(doc.videoOne),
          videoTwo: Value(doc.videoTwo),
          latitude: Value(doc.latitude),
          longitude: Value(doc.longitude),
          shippingCost: Value(doc.shippingCost),
          uploadStatus: doc.uploadStatus.name,
          uploadProgress: Value(doc.uploadProgress),
        ),
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
    }
  }

  @override
  Stream<CachedDocEntity?> watchDoc(int orderId) {
    return (_db.select(_db.cachedDocs)..where((t) => t.orderId.equals(orderId)))
        .watchSingleOrNull()
        .map((doc) => doc?.toEntity());
  }

  @override
  Future<ApiResult<void>> updateProgress({
    required int docId,
    required UploadStatus status,
    required double? progress,
  }) async {
    try {
      await _db.update(_db.cachedDocs).replace(
            CachedDoc(
              id: docId,
              orderId: docId,
              uploadStatus: status.name,
              uploadProgress: progress!,
            ),
          );
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
    }
  }

  @override
  Future<ApiResult<CachedDocEntity?>> getDoc({required int orderId}) async {
    try {
      final row = await _db.getDoc(orderId: orderId);
      if (row == null) return const ApiResult.success(data: null);

      return ApiResult.success(data: row.toEntity());
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
    }
  }

  @override
  Future<ApiResult<bool>> deleteDoc({required int orderId}) async {
    try {
      await _db.deleteDoc(orderId: orderId);
      return const ApiResult.success(data: true);
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorModel(message: e.toString()),
      );
    }
  }

  @override
  Stream<List<CachedDocEntity>> watchUploadingDocs() {
    return (_db.select(_db.cachedDocs)
          ..where((tbl) => tbl.uploadStatus.equals('uploading')))
        .watch()
        .map((rows) => rows.map((e) => e.toEntity()).toList());
  }
}

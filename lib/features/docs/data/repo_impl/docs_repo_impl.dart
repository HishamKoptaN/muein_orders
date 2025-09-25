import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/error/api_error_handler.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../../domain/repo/docs_repo.dart';
import '../datasources/local/drift/app_database.dart';
import '../datasources/remote_data_sr/docs_api.dart';
import '../mapper/docs_mapper.dart';

@Injectable(as: DocsRepo)
class DocsRepoImpl implements DocsRepo {
  final DocsApi postsApi;
  final Location location = Location();
  final AppDatabase db;
  DocsRepoImpl({
    required this.postsApi,
    required this.db,
  });
  @override
  Future<ApiResult<DocsResEntity?>> getDocs({required int orderId}) async {
    try {
      final res = await postsApi.getClientDocs(orderId: orderId);
      final result = res?.toEntity();
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
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
    return (
      lat: locationData.latitude!,
      lng: locationData.longitude!,
    );
  }

  @override
  Future<ApiResult<DocEntity?>> createDoc({
    required CachedDoc doc,
  }) async {
    try {
      await db.update(db.cachedDocs).replace(
            doc.copyWith(
              uploadStatus: 'uploading',
            ),
          );
      final imageOneFile = fileFromPath(doc.imageOne);
      final imageTwoFile = fileFromPath(doc.imageTwo);
      final videoOneFile = fileFromPath(doc.videoOne);
      final videoTwoFile = fileFromPath(doc.videoTwo);
      final res = await postsApi.createDoc(
        orderId: doc.orderId,
        videoOne: videoOneFile,
        videoTwo: videoTwoFile,
        imageOne: imageOneFile,
        imageTwo: imageTwoFile,
        longitude: doc.longitude.toString(),
        latitude: doc.latitude.toString(),
        shippingCosts: doc.shippingCost.toString(),
        onSendProgress: (sent, total) async {
          final progress = total != 0 ? ((sent / total) * 100).toDouble() : 0.0;
          await db.update(db.cachedDocs).replace(
                doc.copyWith(uploadProgress: progress),
              );
        },
      );
      final result = res.toEntity();
      await db.update(db.cachedDocs).replace(
            doc.copyWith(
              uploadStatus: 'success',
              uploadProgress: 100.0,
            ),
          );
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      await db.update(db.cachedDocs).replace(
            doc.copyWith(uploadStatus: 'failure'),
          );
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: error,
        ),
      );
    }
  }

  @override
  Future<ApiResult<void>> startUpload({required int orderId}) async {
    try {
      final docs = await (db.cachedDocs.select()
            ..where((tbl) => tbl.orderId.equals(orderId)))
          .get();

      for (final doc in docs) {
        await postsApi.createDoc(
          orderId: doc.orderId,
          videoOne: fileFromPath(doc.videoOne),
          videoTwo: fileFromPath(doc.videoTwo),
          imageOne: fileFromPath(doc.imageOne),
          imageTwo: fileFromPath(doc.imageTwo),
          longitude: doc.longitude.toString(),
          latitude: doc.latitude.toString(),
          shippingCosts: doc.shippingCost.toString(),
          onSendProgress: (int count, int total) {
            final progress =
                total != 0 ? ((count / total) * 100).toDouble() : 0.0;
            db.update(db.cachedDocs).replace(
                  doc.copyWith(uploadProgress: progress),
                );
          },
        );
      }
      return const ApiResult.success(data: null);
    } catch (error) {
      return ApiResult.failure(
          apiErrorModel: ApiErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ApiResult<void>> retryUpload({required int docId}) async {
    try {
      final doc = await (db.select(db.cachedDocs)
            ..where((tbl) => tbl.id.equals(docId)))
          .getSingle();

      await postsApi.createDoc(
        orderId: doc.orderId,
        videoOne: fileFromPath(doc.videoOne),
        videoTwo: fileFromPath(doc.videoTwo),
        imageOne: fileFromPath(doc.imageOne),
        imageTwo: fileFromPath(doc.imageTwo),
        longitude: doc.longitude.toString(),
        latitude: doc.latitude.toString(),
        shippingCosts: doc.shippingCost.toString(),
        onSendProgress: (int count, int total) {
          final progress =
              total != 0 ? ((count / total) * 100).toDouble() : 0.0;
          db.update(db.cachedDocs).replace(
                doc.copyWith(uploadProgress: progress),
              );
        },
      );
      return const ApiResult.success(
        data: null,
      );
    } catch (e) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(
          error: e,
        ),
      );
    }
  }

  File? fileFromPath(String? path) {
    if (path == null || path.isEmpty) return null;
    final file = File(path);
    return file.existsSync() ? file : null;
  }
}

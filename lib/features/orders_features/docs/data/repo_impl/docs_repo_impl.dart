import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../cached_docs/data/models/cached_doc_model.dart';
import '../../../salla_orders_items/domain/entities/salla_order_items_res_entity.dart';
import '../../../../s3/data/repo/s3_repo.dart';
import '../../domain/entities/doc_req_entity.dart';
import '../../domain/repo/docs_repo.dart';
import '../datasources/remote_data_sr/docs_api.dart';
import '../mapper/docs_mapper.dart';
import '../models/doc_req_model.dart';
import '../models/docs_res_model.dart';
import '../models/presigned_doc_url_req_model.dart';

@LazySingleton(as: DocsRepo)
class DocsRepoImpl implements DocsRepo {
  final DocsApi docsApi;
  final AppDatabase db;
  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();
  final S3Repo s3Repo;

  DocsRepoImpl({required this.docsApi, required this.db, required this.s3Repo});

  @override
  Future<ApiResult<SallaOrderItemUnitEntity?>> createDoc({
    required DocReqEntity doc,
  }) async {
    //await (db.update(db.docsTable)..where((t) {
    //      return t.id.equals(doc.id);
    //    }))
    //    .write(
    //      DocsTableCompanion(uploadStatus: Value(UploadStatus.uploading.name)),
    //    );
    final cachedDocs =
        await (db.select(db.docsTable)..where((t) {
              return t.id.equals(doc.id);
            }))
            .get();
    if (cachedDocs.isNotEmpty) {
      final cachedDoc = cachedDocs.first;
      // final files = cachedDoc.docMediafiles ?? [];
      for (int index = 0; index < doc.files.length; index++) {
        final file = doc.files[index];
        if (file.fileUploadStatus == .uploaded) {
          continue;
        }
        await updateFileStatus(id: doc.id, status: UploadStatus.uploading);
        final finalUrl = await _uploadS3File(
          docId: doc.id,
          filePath: file.path,
          fileType: .image,
        );
        try {
          await docsApi.docMedia(
            docMediaReq: DocMediaReqModel(
              id: doc.id,
              docId: doc.id,
              filePath: finalUrl ?? '',
              fileType: file.fileUploadStatus.name,
            ),
          );
          // await updateFileStatus(
          //   files: files,
          //   media: file,
          //   docId: doc.id,
          //   status: UploadStatus.uploaded,
          // );
        } catch (error) {
          // await updateFileStatus(
          //   files: files,
          //   media: file,
          //   docId: doc.id,
          //   status: UploadStatus.failed,
          // );
          return const ApiResult.failure(errorInfo: ErrorInfo());
        }
      }
    }
    await _uploadLocationIfNeeded(doc);
    await _updateDocStatusBasedOnUpload(doc: doc);
    //await (db.update(db.docsTable)..where((t) {
    //      return t.id.equals(doc.id);
    //    }))
    //    .write(
    //      DocsTableCompanion(uploadStatus: Value(UploadStatus.uploaded.name)),
    //    );
    return const ApiResult.success(data: null);
  }

  Future<void> updateFileStatus({
    required int id,
    required UploadStatus status,
  }) async {}

  Future<void> _uploadLocationIfNeeded(DocReqEntity doc) async {
    final cachedDoc = await (db.select(
      db.docsTable,
    )..where((t) => t.id.equals(doc.id))).getSingleOrNull();
    if (cachedDoc?.location != null &&
        cachedDoc!.location!.status != UploadStatus.uploaded &&
        (cachedDoc.location!.latitude != 0.0 ||
            cachedDoc.location!.longitude != 0.0)) {
      try {
        await docsApi.createDoc(
          docReq: DocReqModel(
            docId: doc.id,
            latitude: doc.location.latitude.toString(),
            longitude: doc.location.longitude.toString(),
          ),
        );
        await db.updateDocLocationStatus(
          docId: doc.id,
          status: UploadStatus.uploaded,
        );
      } catch (error) {
        await db.updateDocLocationStatus(
          docId: doc.id,
          status: UploadStatus.failed,
        );
      }
    }
  }

  Future<void> _updateDocStatusBasedOnUpload({
    required DocReqEntity doc,
  }) async {
    final isAllUploaded = await _isAllContentUploaded(doc: doc);
    final newStatus = isAllUploaded
        ? UploadStatus.uploaded
        : UploadStatus.pending;
    // await (db.update(db.docsTable)..where((t) {
    //       return t.id.equals(doc.id);
    //     }))
    //     .write(DocsTableCompanion(uploadStatus: Value(newStatus.name)));
  }

  Future<bool> _isAllContentUploaded({required DocReqEntity doc}) async {
    for (final file in doc.files) {
      if (file.fileUploadStatus != UploadStatus.uploaded) {
        return false;
      }
    }
    if (doc.location.status != UploadStatus.uploaded) {
      return false;
    }

    return true;
  }

  Future<String?> _uploadS3File({
    required int docId,
    required String? filePath,
    required DocMediaType fileType,
  }) async {
    if (filePath == null || filePath.isEmpty) return null;
    final file = File(filePath);
    if (!file.existsSync()) return null;
    final presignedInfo = await docsApi.presigned(
      presignedDocUrlReqModel: PresignedDocUrlReqModel(
        docId: docId,
        extension: filePath.split('.').last,
        fileType: fileType.name,
      ),
    );
    await s3Repo.uploadFile(
      file: file,
      uploadUrl: presignedInfo.uploadUrl ?? '',
      contentType: presignedInfo.contentType ?? '',
    );
    return presignedInfo.filePath;
  }

  Future<void> uploadLocation({required DocReqEntity doc}) async {
    await docsApi.createDoc(
      docReq: DocReqModel(
        docId: doc.id,
        latitude: doc.location.latitude.toString(),
        longitude: doc.location.longitude.toString(),
      ),
    );
  }

  Future<void> _initializeNotifications() async {
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidInit);
    await _notifications.initialize(
      onDidReceiveNotificationResponse: (response) {},
      settings: initSettings,
    );
  }

  Future<void> _showProgressNotification({
    required CachedDocModel doc,
    required double progress,
  }) async {
    final clampedProgress = progress.clamp(0, 100).toInt();
    const title = 'جاري رفع المستند';
    const body = 'جاري رفع المستند';
    final style = BigTextStyleInformation(
      '$body\n${clampedProgress.toString()}%',
      htmlFormatBigText: false,
    );
    final androidDetails = AndroidNotificationDetails(
      'upload_channel',
      'جاري رفع المستند',
      channelDescription: 'عرض تقدم الرفع',
      importance: Importance.low,
      priority: Priority.low,
      showProgress: true,
      maxProgress: 100,
      progress: clampedProgress,
      onlyAlertOnce: true,
      ongoing: true,
      playSound: false,
      styleInformation: style,
    );
    await _notifications.show(
      id: doc.id,
      title: title,
      body: '$body',
      notificationDetails: NotificationDetails(android: androidDetails),
    );
  }

  @override
  Future<ApiResult<void>> startUpload({required int id}) async {
    try {
      final docs =
          await (db.docsTable.select()..where((tbl) {
                return tbl.id.equals(id);
              }))
              .get();
      for (final doc in docs) {
        await docsApi.createDoc(
          docReq: DocReqModel(
            docId: doc.id,
            latitude: doc.location?.latitude.toString() ?? '',
            longitude: doc.location?.longitude.toString() ?? '',
          ),
        );
      }
      return const ApiResult.success(data: null);
    } catch (error) {
      return const ApiResult.failure(errorInfo: ErrorInfo());
    }
  }

  @override
  Future<ApiResult<void>> retryUpload({required int id}) async {
    try {
      final doc = await (db.select(
        db.docsTable,
      )..where((tbl) => tbl.id.equals(id))).getSingle();
      await docsApi.createDoc(
        docReq: DocReqModel(
          docId: doc.id,
          latitude: doc.location?.latitude.toString() ?? '',
          longitude: doc.location?.longitude.toString() ?? '',
        ),
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      return const ApiResult.failure(errorInfo: ErrorInfo());
    }
  }

  File? fileFromPath(String? path) {
    if (path == null || path.isEmpty) return null;
    final file = File(path);
    return file.existsSync() ? file : null;
  }

  @override
  Future<ApiResult<SallaOrderItemUnitEntity>> docMedia({
    required DocMediaReqEntity docMediaReq,
  }) async {
    try {
      final res = await docsApi.docMedia(docMediaReq: docMediaReq.toModel());
      return ApiResult.success(data: null);
    } catch (error) {
      return const ApiResult.failure(errorInfo: ErrorInfo());
    }
  }
}

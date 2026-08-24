import 'dart:async';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../cached_docs/data/models/cached_doc_model.dart';
import '../../../salla_orders_items/domain/entities/salla_order_items_res_entity.dart';
import '../../../../s3/data/repo/s3_repo.dart';
import '../../domain/entities/doc_req_entity.dart';
import '../../domain/repo/docs_repo.dart';
import '../datasources/remote_data_sr/docs_api.dart';
import '../models/doc_req_model.dart';
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
  Future<ApiResult<SallaOrderItemUnitEntity?>> updateDoc({
    required DocReqEntity docReq,
  }) async {
    await db.docsDao.updateUploadStatus(
      id: docReq.id,
      status: UploadStatus.uploading.name,
    );
    final docMediaFiles =
        await (db.select(db.docMediaTable)..where((t) {
              return t.docId.equals(docReq.id);
            }))
            .get();
    await syncFiles(docMediaFiles);
    await _uploadLocation(doc: docReq);
    await db.docsDao.updateUploadStatus(
      id: docReq.id,
      status: UploadStatus.uploaded.name,
    );
    return const ApiResult.success(data: null);
  }

  Future<void> syncFiles(List<DocMediaEntry> docMediaFiles) async {
    for (final docMediaFile in docMediaFiles) {
      if ([
        UploadStatus.init.name,
        UploadStatus.uploaded.name,
      ].contains(docMediaFile.uploadStatus)) {
        continue;
      }
      await db.docMediaDao.updateUploadStatus(
        id: docMediaFile.id,
        status: UploadStatus.uploading.name,
      );

      try {
        final finalUrl = await _uploadS3File(
          id: docMediaFile.id,
          filePath: docMediaFile.localFilePath,
        );
        await docsApi.updateMedia(
          id: docMediaFile.id,
          docMediaReq: DocMediaReqModel(filePath: finalUrl ?? ''),
        );
        await db.docMediaDao.updateUploadStatus(
          id: docMediaFile.id,
          status: UploadStatus.uploaded.name,
        );
      } catch (error) {
        await db.docMediaDao.updateUploadStatus(
          id: docMediaFile.id,
          status: UploadStatus.failed.name,
        );
      }
    }
  }

  Future<void> _uploadLocation({required DocReqEntity doc}) async {
    if ([
        UploadStatus.init.name,
        UploadStatus.uploaded.name,
      ].contains(doc.locationUploadStatus)) {
        return;
      }
  try {
        await docsApi.updateDoc(
          id: doc.id,
          docReq: DocReqModel(
            latitude: doc.latitude.toString(),
            longitude: doc.longitude.toString(),
          ),
        );
        await db.docsDao.updateDocLocationStatus(
          id: doc.id,
          status: UploadStatus.uploaded.name,
        );
      } catch (error) {
        await db.docsDao.updateDocLocationStatus(
          id: doc.id,
          status: UploadStatus.failed.name,
        );
      }
  }

  Future<String?> _uploadS3File({
    required int id,
    required String? filePath,
  }) async {
    if (filePath == null || filePath.isEmpty) return null;
    final file = File(filePath);
    if (!file.existsSync()) return null;
    final presignedInfo = await docsApi.presigned(
      presignedDocUrlReqModel: PresignedDocUrlReqModel(
        id: id,
        extension: filePath.split('.').last,
      ),
    );
    await s3Repo.uploadFile(
      file: file,
      uploadUrl: presignedInfo.uploadUrl ?? '',
      contentType: presignedInfo.contentType ?? '',
    );
    return presignedInfo.filePath;
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
        await docsApi.updateDoc(
          id: doc.id,
          docReq: DocReqModel(
            latitude: doc.latitude.toString(),
            longitude: doc.longitude.toString(),
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
      final doc =
          await (db.select(db.docsTable)..where((tbl) {
                return tbl.id.equals(id);
              }))
              .getSingle();
      await docsApi.updateDoc(
        id: doc.id,
        docReq: DocReqModel(
          latitude: doc.latitude.toString(),
          longitude: doc.longitude.toString(),
        ),
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      return const ApiResult.failure(errorInfo: ErrorInfo());
    }
  }

  @override
  Future<ApiResult<void>> updateMedia({
    required DocMediaReqEntity docMediaReq,
  }) {
    throw UnimplementedError();
  }
}

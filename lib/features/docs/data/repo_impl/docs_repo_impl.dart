import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/app/global_variable.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../cached_docs/data/models/cached_doc_model.dart';
import '../../../s3/data/repo/s3_repo.dart';
import '../../domain/entities/create_doc_entity.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../../domain/repo/docs_repo.dart';
import '../datasources/remote_data_sr/docs_api.dart';
import '../mapper/docs_mapper.dart';
import '../models/create_doc_req_model.dart';
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
  Future<ApiResult<List<DocEntity>?>> get({required int orderId}) async {
    try {
      final res = await docsApi.get(orderId: orderId);
      final result = res?.map((e) => e.toEntity()).toList();
      return ApiResult.success(data: result);
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }

  @override
  Future<ApiResult<DocEntity?>> createDoc({
    required CreateDocEntity doc,
  }) async {
    log(doc.docId.toString());
    await db.updateDocStatus(
      docId: doc.docId,
      status: FileUploadStatus.uploading,
    );
    for (int index = 0; index < doc.files.length; index++) {
      final file = doc.files[index];
      if (file.status == FileUploadStatus.uploaded ||
          file.status == FileUploadStatus.init) {
        continue;
      }
      await db.updateDocFileStatus(
        docId: doc.docId,
        path: file.path,
        fileType: file.type,
        status: FileUploadStatus.uploading,
      );
      final finalUrl = await _uploadSingleFile(
        docId: doc.docId,
        filePath: file.path,
      );
      try {
        await docsApi.createDoc(
          createDocReq: CreateDocReqModel(
            docId: doc.docId,
            imageOne: file.type == DocFileType.imageOne ? finalUrl : null,
            imageTwo: file.type == DocFileType.imageTwo ? finalUrl : null,
            videoOne: file.type == DocFileType.videoOne ? finalUrl : null,
            videoTwo: file.type == DocFileType.videoTwo ? finalUrl : null,
            latitude: doc.location?.latitude.toString(),
            longitude: doc.location?.longitude.toString(),
          ),
        );
        await db.updateDocFileStatus(
          docId: doc.docId,
          path: file.path,
          fileType: file.type,
          status: FileUploadStatus.uploaded,
        );
      } catch (error) {
        await db.updateDocFileStatus(
          docId: doc.docId,
          path: file.path,
          fileType: file.type,
          status: FileUploadStatus.failed,
        );
        return ApiResult.failure(
          apiErrorModel: ApiErrorHandler.handle(error: error),
        );
      }
    }
    await _uploadLocationIfNeeded(doc);
    return const ApiResult.success(data: null);
  }

  Future<void> _uploadLocationIfNeeded(CreateDocEntity doc) async {
    if (doc.location == null) return;
    final cachedDoc = await (db.select(
      db.cachedDocsTable,
    )..where((t) => t.docId.equals(doc.docId))).getSingleOrNull();
    if (cachedDoc?.location != null &&
        cachedDoc!.location!.status != FileUploadStatus.uploaded) {
      try {
        await db.updateDocLocationStatus(
          docId: doc.docId,
          status: FileUploadStatus.uploading,
        );
        await docsApi.createDoc(
          createDocReq: CreateDocReqModel(
            docId: doc.docId,
            latitude: doc.location!.latitude.toString(),
            longitude: doc.location!.longitude.toString(),
          ),
        );
        await db.updateDocLocationStatus(
          docId: doc.docId,
          status: FileUploadStatus.uploaded,
        );
      } catch (error) {
        await db.updateDocLocationStatus(
          docId: doc.docId,
          status: FileUploadStatus.failed,
        );
      }
    }
  }

  Future<String?> _uploadSingleFile({
    required int docId,
    required String? filePath,
  }) async {
    if (filePath == null || filePath.isEmpty) return null;
    final file = File(filePath);
    if (!file.existsSync()) return null;
    final presignedInfo = await docsApi.presigned(
      presignedDocUrlReqModel: PresignedDocUrlReqModel(
        docId: docId,
        extension: filePath.split('.').last,
        fileType: '',
      ),
    );
    await s3Repo.uploadFile(
      file: file,
      uploadUrl: presignedInfo.uploadUrl ?? '',
      contentType: presignedInfo.contentType ?? '',
    );
    return presignedInfo.filePath;
  }

  Future<void> uploadLocation({required CreateDocEntity doc}) async {
    await docsApi.createDoc(
      createDocReq: CreateDocReqModel(
        docId: doc.docId,
        latitude: doc.location?.latitude.toString(),
        longitude: doc.location?.longitude.toString(),
      ),
    );
    await db.updateDocLocationStatus(
      docId: doc.docId,
      status: FileUploadStatus.uploaded,
    );
  }

  // await _initializeNotifications();
  Future<void> _initializeNotifications() async {
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidInit);
    await _notifications.initialize(initSettings);
  }

  Future<void> _showProgressNotification({
    required CachedDocModel doc,
    required double progress,
  }) async {
    final t = AppLocalizations.of(GlobalVariable.navState.currentContext!);
    final clampedProgress = progress.clamp(0, 100).toInt();
    final title = t.uploadingDocument;
    final body = t.documentationIsBeingUploaded;
    final style = BigTextStyleInformation(
      '$body\n${clampedProgress.toString()}%',
      htmlFormatBigText: false,
    );
    final androidDetails = AndroidNotificationDetails(
      'upload_channel',
      t.uploadingDocument,
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
      doc.docId ?? 0,
      title,
      '$body',
      NotificationDetails(android: androidDetails),
    );
  }

  @override
  Future<ApiResult<void>> startUpload({required int docId}) async {
    try {
      final docs =
          await (db.cachedDocsTable.select()
                ..where((tbl) => tbl.docId.equals(docId)))
              .get();
      for (final doc in docs) {
        await docsApi.createDoc(
          createDocReq: CreateDocReqModel(docId: doc.docId),
        );
      }
      return const ApiResult.success(data: null);
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }

  @override
  Future<ApiResult<void>> retryUpload({required int docId}) async {
    try {
      final doc = await (db.select(
        db.cachedDocsTable,
      )..where((tbl) => tbl.docId.equals(docId))).getSingle();
      await docsApi.createDoc(
        createDocReq: CreateDocReqModel(docId: doc.docId),
      );
      return const ApiResult.success(data: null);
    } catch (e) {
      return ApiResult.failure(apiErrorModel: ApiErrorHandler.handle(error: e));
    }
  }

  File? fileFromPath(String? path) {
    if (path == null || path.isEmpty) return null;
    final file = File(path);
    return file.existsSync() ? file : null;
  }
}

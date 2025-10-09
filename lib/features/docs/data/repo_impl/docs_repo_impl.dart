import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/app/global_variable.dart';
import '../../../../core/config/upload_settings.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../../domain/repo/docs_repo.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../datasources/remote_data_sr/docs_api.dart';
import '../mapper/docs_mapper.dart';

@LazySingleton(as: DocsRepo)
class DocsRepoImpl implements DocsRepo {
  final DocsApi postsApi;
  final AppDatabase db;
  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

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

  Future<void> _initializeNotifications() async {
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidInit);
    await _notifications.initialize(initSettings);
  }

  Future<void> _showProgressNotification({
    required CachedDoc doc,
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
      doc.id,
      title,
      '$body',
      NotificationDetails(android: androidDetails),
    );
  }
  @override
  Future<ApiResult<DocEntity?>> createDoc({
    required CachedDoc doc,
  }) async {
    try {
      await _initializeNotifications();
      await db.update(db.cachedDocs).replace(
            doc.copyWith(
              uploadStatus: 'uploading',
            ),
          );
      final imageOneFile = fileFromPath(doc.imageOne);
      final imageTwoFile = fileFromPath(doc.imageTwo);
      final videoOneFile = fileFromPath(doc.videoOne);
      final videoTwoFile = fileFromPath(doc.videoTwo);
      if (UploadSpeedSettings.enableDetailedLogging) {
        print('📤 ملفات الرفع جاهزة لبدء العملية');
      }

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
          if (kDebugMode &&
              progress >= UploadSpeedSettings.debugCancelPercentage) {
            throw Exception(
              'تم إلغاء الطلب في وضع التطوير عند ${UploadSpeedSettings.debugCancelPercentage}% لمراقبة الحالة',
            );
          }
          await db.update(db.cachedDocs).replace(
                doc.copyWith(
                  uploadStatus: 'uploading',
                  uploadProgress: progress,
                ),
              );
          await _showProgressNotification(
            doc: doc,
            progress: progress,
          );
          if (UploadSpeedSettings.enableDetailedLogging) {
            print(
              '📤 تقدم الرفع: ${progress.toStringAsFixed(1)}% ($sent/$total bytes) - ${doc.orderId}',
            );
          }
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
                  doc.copyWith(
                      uploadStatus: 'uploading', uploadProgress: progress,),
                );
          },
        );
      }
      return const ApiResult.success(data: null);
    } catch (error) {
      return ApiResult.failure(
          apiErrorModel: ApiErrorHandler.handle(error: error),);
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

          // إضافة نفس التأخير البطيء للمراقبة في retryUpload
          // نستخدم Timer بدلاً من await داخل الـ callback
          if (UploadSpeedSettings.enableSimulatedProgress) {
            Future.delayed(
                const Duration(
                    milliseconds: UploadSpeedSettings.progressSimulationSpeed,),
                () {},);
          }
          Future.delayed(
              const Duration(milliseconds: UploadSpeedSettings.progressDelayMs),
              () {},);
        },
      );
      return const ApiResult.success(data: null);
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

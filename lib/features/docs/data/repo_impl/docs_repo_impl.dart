import 'dart:async';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/config/upload_settings.dart';
import '../../../../core/error/api_error_handler.dart';
import '../../domain/entities/docs_res_entity.dart';
import '../../domain/repo/docs_repo.dart';
import '../datasources/local/drift/app_database.dart';
import '../datasources/remote_data_sr/docs_api.dart';
import '../mapper/docs_mapper.dart';

@Injectable(as: DocsRepo)
class DocsRepoImpl implements DocsRepo {
  final DocsApi postsApi;
  final AppDatabase db;
  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();

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

  /// تهيئة الإشعارات
  Future<void> _initializeNotifications() async {
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidInit);
    await _notifications.initialize(initSettings);
  }

  /// إظهار إشعار التقدم
  Future<void> _showProgressNotification(CachedDoc doc, double progress) async {
    final androidDetails = AndroidNotificationDetails(
      'upload_channel',
      'رفع الملفات',
      channelDescription: 'عرض تقدم الرفع',
      importance: Importance.low,
      priority: Priority.low,
      showProgress: true,
      maxProgress: 100,
      progress: progress.toInt(),
      onlyAlertOnce: true,
      ongoing: true,
      playSound: false,
    );
    await _notifications.show(
      doc.id ?? 0,
      'رفع التوثيق',
      'جاري رفع طلب ${doc.orderId} (${progress.toInt()}%)',
      NotificationDetails(android: androidDetails),
    );
  }


  @override
  Future<ApiResult<DocEntity?>> createDoc({
    required CachedDoc doc,
    required Function onSendProgress,
  }) async {
    try {
      // تهيئة الإشعارات
      await _initializeNotifications();

      if (UploadSpeedSettings.enableDetailedLogging) {
        print('📤 بدء رفع doc id=${doc.id} للطلب ${doc.orderId}');
      }
      await db.update(db.cachedDocs).replace(
            doc.copyWith(
              uploadStatus: 'uploading',
            ),
          );
      if (UploadSpeedSettings.enableDetailedLogging) {
        print('📤 تم تحديث حالة doc id=${doc.id} إلى uploading');
      }
      final imageOneFile = fileFromPath(doc.imageOne);
      final imageTwoFile = fileFromPath(doc.imageTwo);
      final videoOneFile = fileFromPath(doc.videoOne);
      final videoTwoFile = fileFromPath(doc.videoTwo);
      if (UploadSpeedSettings.enableDetailedLogging) {
        print('📤 ملفات الرفع:');
        print(
            '  - imageOne: ${imageOneFile?.path ?? 'null'} (${imageOneFile?.lengthSync() ?? 0} bytes)');
        print(
            '  - imageTwo: ${imageTwoFile?.path ?? 'null'} (${imageTwoFile?.lengthSync() ?? 0} bytes)');
        print(
            '  - videoOne: ${videoOneFile?.path ?? 'null'} (${videoOneFile?.lengthSync() ?? 0} bytes)');
        print(
            '  - videoTwo: ${videoTwoFile?.path ?? 'null'} (${videoTwoFile?.lengthSync() ?? 0} bytes)');

        // إضافة تأخير قبل بدء الرفع
        print('📤 بدء الرفع الفعلي...');
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

          // ميزة وضع التطوير: إلغاء الطلب عند 80% لمراقبة حالة الطلبات
          if (kDebugMode && progress >= 80) {
            if (UploadSpeedSettings.enableDetailedLogging) {
              print('🚫 إلغاء الطلب في وضع التطوير عند 80% لمراقبة التقدم');
            }
            throw Exception('تم إلغاء الطلب في وضع التطوير عند 80% لمراقبة الحالة');
          }
          // تحديث قاعدة البيانات أولاً
          await db.update(db.cachedDocs).replace(
                doc.copyWith(uploadProgress: progress),
              );
          // إظهار إشعار التقدم
          await _showProgressNotification(doc, progress);
          // ثم طباعة الـ logs
          if (UploadSpeedSettings.enableDetailedLogging) {
            print(
                '📤 تقدم الرفع: ${(progress).toStringAsFixed(1)}% (${sent}/${total} bytes)');
          }
          // إضافة تأخير بسيط فقط لتجنب التحديثات السريعة جداً
          await Future.delayed(Duration(milliseconds: 100));
        },
      );
      if (UploadSpeedSettings.enableDetailedLogging) {
        print('📤 تم استلام الرد من API');
      }
      final result = res.toEntity();
      await db.update(db.cachedDocs).replace(
            doc.copyWith(
              uploadStatus: 'success',
              uploadProgress: 100.0,
            ),
          );
      if (UploadSpeedSettings.enableDetailedLogging) {
        print('📤 تم تحديث حالة doc id=${doc.id} إلى success');
      }
      return ApiResult.success(
        data: result,
      );
    } catch (error) {
      print('📤 خطأ في رفع doc id=${doc.id}: $error');
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

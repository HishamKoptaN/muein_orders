import 'dart:async';
import 'package:flutter/foundation.dart';
import '../../../features/docs/data/datasources/local/drift/app_database.dart';
import '../../../features/docs/domain/usecases/docs_use_cases.dart';
import '../../../core/di/dependency_injection.dart';

/// Background Upload Task - يعمل في Isolate منفصل لتجنب frame drops
class BackgroundUploadTask {
  static const String _taskName = 'background_upload_task';

  /// بدء مهمة رفع في الخلفية
  static Future<void> startBackgroundUpload() async {
    debugPrint('🚀 بدء مهمة رفع في الخلفية...');

    try {
      // تشغيل في Isolate منفصل لتجنب frame drops
      await compute(_performUploadInIsolate, _taskName);
      debugPrint('✅ انتهت مهمة الرفع في الخلفية');
    } catch (e) {
      debugPrint('❌ خطأ في مهمة الرفع في الخلفية: $e');
    }
  }

  /// تنفيذ الرفع في Isolate منفصل
  static Future<void> _performUploadInIsolate(String taskName) async {
    debugPrint('🔄 بدء تنفيذ الرفع في Isolate منفصل...');

    try {
      // تهيئة Dependencies في الـ Isolate
      await configureDependencies();

      final db = getIt<AppDatabase>();
      final docsUseCase = getIt<DocsUseCase>();

      // البحث عن الملفات المعلقة
      final pendingDocs = await (db.select(db.cachedDocs)
            ..where((tbl) => tbl.uploadStatus.equals('pending')))
          .get();

      if (pendingDocs.isEmpty) {
        debugPrint('ℹ️ لا توجد ملفات معلقة للرفع');
        return;
      }

      debugPrint('📂 تم العثور على ${pendingDocs.length} ملفات معلقة');

      // رفع الملفات واحد تلو الآخر
      for (final doc in pendingDocs) {
        await _uploadSingleDoc(doc, docsUseCase);
      }

      debugPrint('✅ انتهى رفع جميع الملفات المعلقة');
    } catch (e) {
      debugPrint('❌ خطأ في تنفيذ الرفع في Isolate: $e');
      rethrow;
    }
  }

  /// رفع ملف واحد
  static Future<void> _uploadSingleDoc(
    CachedDoc doc,
    DocsUseCase docsUseCase,
  ) async {
    debugPrint('⬆️ بدء رفع الملف ${doc.id} للطلب ${doc.orderId}');

    try {
      // محاولة الرفع
      await docsUseCase.createDoc(doc: doc);
      debugPrint('✅ تم رفع الملف ${doc.id} بنجاح');

      // انتظار قصير لتجنب الضغط على الخادم
      await Future.delayed(const Duration(milliseconds: 500));

    } catch (e) {
      debugPrint('❌ فشل في رفع الملف ${doc.id}: $e');

      // يمكن إضافة retry logic هنا
      // await _retryUpload(doc, docsUseCase, e);
    }
  }

  /// مراقبة الملفات المعلقة دورياً
  static Timer? _monitoringTimer;
  static bool _isMonitoringActive = false;

  /// بدء مراقبة دورية للملفات المعلقة
  static void startPeriodicMonitoring() {
    if (_isMonitoringActive) return;

    _isMonitoringActive = true;
    debugPrint('👁️ بدء المراقبة الدورية للملفات المعلقة');

    _monitoringTimer = Timer.periodic(
      const Duration(minutes: 5), // فحص كل 5 دقائق
      (timer) {
        if (_isMonitoringActive) {
          startBackgroundUpload();
        } else {
          timer.cancel();
        }
      },
    );
  }

  /// إيقاف المراقبة الدورية
  static void stopPeriodicMonitoring() {
    _isMonitoringActive = false;
    _monitoringTimer?.cancel();
    _monitoringTimer = null;
    debugPrint('🛑 تم إيقاف المراقبة الدورية');
  }

  /// فحص سريع للملفات المعلقة
  static Future<int> getPendingDocsCount() async {
    try {
      await configureDependencies();
      final db = getIt<AppDatabase>();

      final count = await (db.select(db.cachedDocs)
            ..where((tbl) => tbl.uploadStatus.equals('pending')))
          .get();

      return count.length;
    } catch (e) {
      debugPrint('❌ خطأ في عد الملفات المعلقة: $e');
      return 0;
    }
  }
}

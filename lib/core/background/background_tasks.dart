import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import '../../features/docs/data/datasources/local/drift/app_database.dart';
import '../../features/docs/domain/usecases/docs_use_cases.dart';
import '../config/upload_settings.dart';
import '../di/dependency_injection.dart';

Future<void> startUploadDocs() async {
  try {
    final db = getIt<AppDatabase>();
    final docsUseCase = getIt<DocsUseCase>();
    final statuses = [
      'pending',
      'uploading',
    ];

    final query = db.select(db.cachedDocs)
      ..where(
        (tbl) {
          Expression<bool>? condition;

          for (final status in statuses) {
            final expr = tbl.uploadStatus.equals(status);
            condition = condition == null ? expr : condition | expr;
          }

          return condition!;
        },
      );

    final pendingDocs = await query.get();
    if (pendingDocs.isEmpty) {
      debugPrint('ℹ️ لا توجد توثيقات بحاجة للرفع في الوقت الحالي.');
      return;
    }

    debugPrint(
        '📋 تم العثور على ${pendingDocs.length} توثيقة في انتظار الرفع:');
    for (var doc in pendingDocs) {
      debugPrint(
          '  • الطلب ${doc.orderId} - الحالة: ${doc.uploadStatus} - التقدم: ${doc.uploadProgress}%');
    }

    debugPrint(
        '⏰ انتظار ${UploadSpeedSettings.initialDelaySeconds} ثانية قبل بدء الرفع...');

    await Future.delayed(
      const Duration(seconds: UploadSpeedSettings.initialDelaySeconds),
    );

    for (int i = 0; i < pendingDocs.length; i++) {
      final doc = pendingDocs[i];
      try {
        debugPrint('🚀 بدء رفع الطلب ${doc.orderId}...');

        await docsUseCase.createDoc(
          doc: doc,
        );

        debugPrint('✅ تم رفع الطلب ${doc.orderId} بنجاح');

        if (i < pendingDocs.length - 1) {
          debugPrint(
              '⏰ انتظار ${UploadSpeedSettings.successDelaySeconds} ثانية قبل الطلب التالي...');
          await Future.delayed(
            const Duration(seconds: UploadSpeedSettings.successDelaySeconds),
          );
        }
      } catch (e) {
        debugPrint('❌ خطأ أثناء رفع الطلب ${doc.orderId}: $e');
      }
    }

    debugPrint('🎉 انتهت عملية الرفع لجميع الطلبات');
  } catch (e) {
    debugPrint('⚠️ خطأ عام في startUploadDocs: $e');
  }
}

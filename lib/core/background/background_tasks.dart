// lib/core/background/background_tasks.dart
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

import '../../features/docs/data/datasources/local/drift/app_database.dart';
import '../../features/docs/domain/usecases/docs_use_cases.dart';
import '../di/dependency_injection.dart';

Future<void> startImmediateUpload() async {
  debugPrint('🚀 بدء startImmediateUpload...');
  final db = getIt<AppDatabase>();
  final docsUseCase = getIt<DocsUseCase>();
  final pendingDocs = await (db.select(db.cachedDocs)
        ..where((tbl) => tbl.uploadStatus.equals('pending')))
      .get();

  debugPrint('📂 تم العثور على ${pendingDocs.length} pending docs في startImmediateUpload');

  for (final doc in pendingDocs) {
    debugPrint('⬆️ رفع doc id=${doc.id} للطلب ${doc.orderId} في startImmediateUpload');
    await docsUseCase.createDoc(doc: doc);
  }

  debugPrint('✅ انتهى startImmediateUpload');
}

/// دالة لاختبار WorkManager يدوياً
Future<void> testWorkManager() async {
  debugPrint('🧪 اختبار WorkManager يدوياً...');
  final db = getIt<AppDatabase>();
  final docsUseCase = getIt<DocsUseCase>();

  final pendingDocs = await (db.select(db.cachedDocs)
        ..where((tbl) => tbl.uploadStatus.equals('pending')))
      .get();

  debugPrint('📂 تم العثور على ${pendingDocs.length} pending docs في الاختبار');

  if (pendingDocs.isNotEmpty) {
    for (final doc in pendingDocs) {
      debugPrint('⬆️ رفع doc id=${doc.id} للطلب ${doc.orderId} في الاختبار');
      try {
        await docsUseCase.createDoc(doc: doc);
        debugPrint('✅ تم رفع doc id=${doc.id} بنجاح في الاختبار');
      } catch (e) {
        debugPrint('❌ خطأ في رفع doc id=${doc.id} في الاختبار: $e');
      }
    }
  } else {
    debugPrint('⚠️ لا توجد pending docs للاختبار');
  }

  debugPrint('✅ انتهى اختبار WorkManager');
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    debugPrint('🚀 Workmanager task [$task] started with input: $inputData');
    debugPrint('📱 WorkManager يعمل في الخلفية!');

    final db = getIt<AppDatabase>();
    final docsUseCase = getIt<DocsUseCase>();
    if (task == 'uploadPendingDocs') {
      debugPrint('📋 بدء مهمة رفع الملفات المعلقة...');
      final pendingDocs = await (db.select(db.cachedDocs)
            ..where((tbl) => tbl.uploadStatus.equals('pending')))
          .get();
      debugPrint('📂 تم العثور على ${pendingDocs.length} pending docs في WorkManager');

      for (final doc in pendingDocs) {
        debugPrint('⬆️ رفع doc id=${doc.id} للطلب ${doc.orderId} في WorkManager');
        try {
          await docsUseCase.createDoc(doc: doc);
          debugPrint('✅ تم رفع doc id=${doc.id} بنجاح');
        } catch (e) {
          debugPrint('❌ خطأ في رفع doc id=${doc.id}: $e');
        }
      }
      debugPrint('✅ انتهت مهمة رفع الملفات المعلقة');
    } else {
      debugPrint('⚠️ مهمة غير معروفة: $task');
    }

    debugPrint('✅ انتهت المهمة [$task]');
    return Future.value(true);
  });
}

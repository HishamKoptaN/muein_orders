// lib/core/background/background_tasks.dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../features/docs/data/datasources/local/drift/app_database.dart';
import '../../features/docs/domain/usecases/docs_use_cases.dart';
import '../config/upload_settings.dart';

final getIt = GetIt.instance;

Future<void> startImmediateUpload() async {
  debugPrint('🚀 === STARTING IMMEDIATE UPLOAD ===');
  try {
    final db = getIt<AppDatabase>();
    final docsUseCase = getIt<DocsUseCase>();

    // التحقق من وجود pending docs
    final pendingDocs = await (db.select(db.cachedDocs)
          ..where((tbl) => tbl.uploadStatus.equals('pending')))
        .get();

    debugPrint('📂 Found ${pendingDocs.length} pending docs for immediate upload');

    if (pendingDocs.isEmpty) {
      debugPrint('✅ No pending docs found - upload completed');
      return;
    }

    debugPrint('⏰ Waiting ${UploadSpeedSettings.initialDelaySeconds} seconds before starting upload...');
    await Future.delayed(
        const Duration(seconds: UploadSpeedSettings.initialDelaySeconds));

    // متغيرات لتتبع التقدم الإجمالي
    int totalDocs = pendingDocs.length;
    int completedDocs = 0;

    debugPrint('🔄 === STARTING SEQUENTIAL FILE UPLOAD ===');
    debugPrint('Total files to upload: $totalDocs');

    for (int i = 0; i < pendingDocs.length; i++) {
      final doc = pendingDocs[i];

      debugPrint('📁 [$i/$totalDocs] Starting upload for doc id=${doc.id} (order ${doc.orderId})');
      debugPrint('⏳ File details: ${doc.imageOne != null ? 'Has image1 ' : ''}${doc.imageTwo != null ? 'Has image2 ' : ''}${doc.videoOne != null ? 'Has video1 ' : ''}${doc.videoTwo != null ? 'Has video2' : ''}');

      try {
        final result = await docsUseCase.createDoc(doc: doc);
        completedDocs++;

        // عرض التقدم الإجمالي
        final overallProgress = (completedDocs / totalDocs) * 100;
        debugPrint('✅ [$completedDocs/$totalDocs] Doc ${doc.id} uploaded successfully');
        debugPrint('📊 Overall Progress: ${overallProgress.toStringAsFixed(1)}%');

        // إضافة تأخير بعد كل رفع ناجح
        if (i < pendingDocs.length - 1) { // لا نحتاج تأخير بعد آخر ملف
          debugPrint('⏰ Waiting ${UploadSpeedSettings.successDelaySeconds} seconds before next file...');
          await Future.delayed(
              const Duration(seconds: UploadSpeedSettings.successDelaySeconds));
        }

      } catch (e) {
        debugPrint('❌ [$completedDocs/$totalDocs] Failed to upload doc ${doc.id}: $e');
        completedDocs++; // نحسب الملف حتى لو فشل للمتابعة
      }
    }

    debugPrint('🎉 === SEQUENTIAL UPLOAD COMPLETED ===');
    debugPrint('Final result: $completedDocs/$totalDocs files uploaded successfully');
  } catch (e) {
    debugPrint('💥 === SEQUENTIAL UPLOAD FAILED ===');
    debugPrint('Critical error: $e');
  }
}

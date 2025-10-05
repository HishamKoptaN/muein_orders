import 'package:flutter/material.dart';
import '../../features/docs/data/datasources/local/drift/app_database.dart';
import '../../features/docs/domain/usecases/docs_use_cases.dart';
import '../config/upload_settings.dart';
import '../di/dependency_injection.dart';

Future<void> startUploadDocs() async {
  try {
    final db = getIt<AppDatabase>();
    final docsUseCase = getIt<DocsUseCase>();

    final pendingDocs = await (db.select(db.cachedDocs)
          ..where((tbl) => tbl.uploadStatus.equals('pending')))
        .get();
    if (pendingDocs.isEmpty) {
      return;
    }

    await Future.delayed(
      const Duration(seconds: UploadSpeedSettings.initialDelaySeconds),
    );

    for (int i = 0; i < pendingDocs.length; i++) {
      final doc = pendingDocs[i];
      debugPrint('🚀 بدء رفع الطلب ${doc.orderId}');

      try {
        await docsUseCase.createDoc(
          doc: doc,
          onSendProgress: (sent, total) async {
            final progress =
                total > 0 ? ((sent / total) * 100).toDouble() : 0.0;
            // الإشعارات الآن مدمجة في الـ repository نفسه
          },
        );

        debugPrint('✅ تم رفع الطلب ${doc.orderId} بنجاح');

        if (i < pendingDocs.length - 1) {
          await Future.delayed(
            const Duration(seconds: UploadSpeedSettings.successDelaySeconds),
          );
        }
      } catch (e) {
        debugPrint('❌ خطأ أثناء رفع الطلب ${doc.orderId}: $e');
      }
    }
  } catch (e) {
    debugPrint('⚠️ خطأ عام في startUploadDocs: $e');
  }
}

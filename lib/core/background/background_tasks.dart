import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import '../../features/cached_docs/data/datasources/local/drift/app_database.dart';
import '../../features/docs/data/mapper/docs_mapper.dart';
import '../../features/docs/domain/usecases/docs_use_cases.dart';
import '../config/upload_settings.dart';
import '../di/dependency_injection.dart';
Future<void> startUploadDocs() async {
  final db = getIt<AppDatabase>();
  final docsUseCase = getIt<DocsUseCase>();
  final statuses = ['pending', 'uploading'];
  final query = db.select(db.cachedDocsTable)
    ..where((tbl) {
      Expression<bool>? condition;
      for (final status in statuses) {
        final expr = tbl.uploadStatus.equals(status);
        condition = condition == null ? expr : condition | expr;
      }
      return condition!;
    });
  final pendingDocs = await query.get();
  if (pendingDocs.isEmpty) {
    debugPrint('ℹ️ لا توجد توثيقات بحاجة للرفع في الوقت الحالي.');
    return;
  }
  await Future.delayed(
    const Duration(seconds: UploadSpeedSettings.initialDelaySeconds),
  );
  for (int i = 0; i < pendingDocs.length; i++) {
    final doc = pendingDocs[i];
    try {
      debugPrint('🚀 بدء رفع الطلب ${doc.docId}...');
      await docsUseCase.createDoc(doc: doc.toCreateEntity());
      debugPrint('✅ تم رفع الطلب ${doc.docId} بنجاح');
      if (i < pendingDocs.length - 1) {
        await Future.delayed(
          const Duration(seconds: UploadSpeedSettings.successDelaySeconds),
        );
      }
    } catch (e) {}
  }
}

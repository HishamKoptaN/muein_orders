// lib/core/background/background_tasks.dart
import 'package:flutter/material.dart';
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

  debugPrint(
      '📂 تم العثور على ${pendingDocs.length} pending docs في startImmediateUpload');

  for (final doc in pendingDocs) {
    debugPrint(
        '⬆️ رفع doc id=${doc.id} للطلب ${doc.orderId} في startImmediateUpload');
    await docsUseCase.createDoc(doc: doc);
  }

  debugPrint('✅ انتهى startImmediateUpload');
}

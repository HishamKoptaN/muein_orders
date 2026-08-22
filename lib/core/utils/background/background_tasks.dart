import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

import '../../../features/orders_features/cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../features/orders_features/cached_docs/data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../features/orders_features/docs/data/mapper/docs_mapper.dart';
import '../../../features/orders_features/docs/domain/usecases/docs_use_cases.dart';
import '../../config/upload_settings.dart';
import '../../di/dependency_injection.dart';

Future<void> startUploadDocs() async {
  final db = getIt<AppDatabase>();
  final docsUseCase = getIt<DocsUseCase>();
  final statuses = [
    UploadStatus.pending,
    UploadStatus.uploading,
    UploadStatus.failed,
    if (!kReleaseMode) UploadStatus.uploaded,
  ];
  // final query = db.select(db.cachedDocsTable)
  //   ..where((tbl) {
  //     Expression<bool>? condition;
  //     for (final status in statuses) {
  //       final expr = tbl.uploadStatus.equals(status.name);
  //       condition = condition == null ? expr : condition | expr;
  //     }
  // return condition!;
  // });
  // final pendingDocs = await query.get();
  // if (pendingDocs.isEmpty) {
  //   debugPrint('ℹ️ لا توجد توثيقات بحاجة للرفع في الوقت الحالي.');
  // return;
  // }
  // await Future.delayed(
  //   const Duration(seconds: UploadSpeedSettings.initialDelaySeconds),
  // );
  // for (int i = 0; i < pendingDocs.length; i++) {
  //   final doc = pendingDocs[i];
  //   try {
  //     debugPrint('🚀 بدء رفع الطلب ${doc.docId}...');
  //     await docsUseCase.createDoc(doc: doc.toCreateEntity());
  //     if (i < pendingDocs.length - 1) {
  //       await Future.delayed(
  //         const Duration(seconds: UploadSpeedSettings.successDelaySeconds),
  //       );
  //     }
  //   } on Exception {
  //     await (db.update(db.cachedDocsTable)
  //           ..where((t) => t.docId.equals(doc.docId)))
  //         .write(const CachedDocsTableCompanion(uploadStatus: Value('failed')));
  //   }
  // }
}

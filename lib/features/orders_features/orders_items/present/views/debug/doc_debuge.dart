import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';

void showTestMenu({
  required CachedDocEntity cachedDoc,
  required BuildContext context,
  required AppDatabase db,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const TrText('معلق'),
              onTap: () {
                db.updateFileStatus(
                  docId: cachedDoc.docId ?? 0,
                  status: FileUploadStatus.pending,
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const TrText('جاري الرفع'),
              onTap: () {
                db.updateFileStatus(
                  docId: cachedDoc.docId ?? 0,
                  status: FileUploadStatus.uploading,
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const TrText('مكتمل'),
              onTap: () async {
                await db.updateFileStatus(
                  docId: cachedDoc.docId ?? 0,
                  status: FileUploadStatus.uploaded,
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const TrText('فاشل'),
              onTap: () async {
                await db.updateFileStatus(
                  docId: cachedDoc.docId ?? 0,
                  status: FileUploadStatus.failed,
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.sync),
              title: const TrText('تغيير حالة التوثيق'),
              onTap: () {
                Navigator.pop(context);
                // _changeOrderStatus(
                //   context: context,
                //   cachedDoc: cachedDoc,
                //   db: getIt<AppDatabase>(),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.trending_up),
              title: const TrText('تغيير نسبة التقدم'),
              onTap: () {
                Navigator.pop(context);
                _changeUploadProgress(
                  context: context,
                  docId: cachedDoc.docId ?? 0,
                  db: getIt<AppDatabase>(),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const TrText('مسح  التوثيق'),
              onTap: () {
                Navigator.pop(context);
                _clearOrderDocs(
                  context: context,
                  docId: cachedDoc.docId ?? 0,
                  db: getIt<AppDatabase>(),
                );
              },
            ),
          ],
        ),
      );
    },
  );
}

void _changeUploadProgress({
  required BuildContext context,
  required int docId,
  required AppDatabase db,
}) {
  final random = Random();
  final progress = random.nextInt(100);
  _updateUploadProgress(db: db, orderId: docId, progress: progress);
  context.showSuccessSnackBar(
    title: 'تم تغيير نسبة التقدم',
    message: 'تم تغيير نسبة التقدم',
  );
}

Future<void> _updateUploadProgress({
  required AppDatabase db,
  required int orderId,
  required int progress,
}) async {
  // try {
  //   await db.deleteDoc(docId: orderId);
  //   final newDoc = CachedDocsCompanion(
  //     docId: Value(orderId),
  //     uploadStatus: const Value('uploading'),
  //     uploadProgress: Value(progress.toDouble()),
  //   );
  //   await db.insertDoc(doc: newDoc);
  // } catch (e) {
  //   debugPrint('خطأ في تحديث نسبة التقدم: $e');
  // }
}

Future<void> _clearOrderDocs({
  required BuildContext context,
  required int docId,
  required AppDatabase db,
}) async {
  await db.deleteDoc(docId: docId);
}

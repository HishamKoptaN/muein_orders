import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../cached_docs/present/view/debug/debug_auto_fill_tools.dart';

void showTestMenu({
  required BuildContext context,
  required CachedDocEntity cachedDoc,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'اختبار التوثيق',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('اضافة التوثيق'),
              onTap: () async {
                final savedData = await DocsDebuge().getSavedTimestamp();
                // 1. تحويل البيانات من Map/List إلى قائمة من كائنات DocFile
                // final List<DocFile> filesList =
                //     (savedData['files'] as List? ?? []).map((path) {
                //       return DocFile(
                //         path: path.toString(),
                //         type: DocFileType
                //             .imageOne, // أو قم بتحديد النوع بناءً على الامتداد
                //         status: FileUploadStatus.pending,
                //       );
                //     }).toList();
                // await getIt<AppDatabase>().cachedDoc(
                //   cachedDocsTableCompanion: CachedDocsTableCompanion(
                //     docId: Value(cachedDoc.docId ?? 0),
                //     files: Value(filesList),
                //   ),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sync),
              title: const Text('تغيير حالة التوثيق'),
              onTap: () {
                Navigator.pop(context);
                _changeOrderStatus(
                  context: context,
                  cachedDoc: cachedDoc,
                  db: getIt<AppDatabase>(),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.trending_up),
              title: const Text('تغيير نسبة التقدم'),
              onTap: () {
                Navigator.pop(context);
                // _changeUploadProgress(
                //   context: context,
                //   docId: docId,
                //   db: getIt<AppDatabase>(),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text('مسح  التوثيق'),
              onTap: () {
                Navigator.pop(context);
                // _clearOrderDocs(
                //   context: context,
                //   docId: docId,
                //   db: getIt<AppDatabase>(),
                // );
              },
            ),
          ],
        ),
      );
    },
  );
}

void _changeOrderStatus({
  required BuildContext context,
  required CachedDocEntity cachedDoc,
  required AppDatabase db,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('تغيير حالة الطلب'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('معلق'),
              onTap: () {
                Navigator.pop(context);
                // _updateOrderStatus(
                //   db: db,
                //   docId: docId,
                //   uploadStatus: FileUploadStatus.pending,
                // );
                context.showSuccessSnackBar(
                  title: 'تم تغيير حالة الطلب',
                  message: FileUploadStatus.pending.name,
                );
              },
            ),
            ListTile(
              title: const Text('قيد التنفيذ'),
              onTap: () {
                Navigator.pop(context);
                // _updateOrderStatus(
                //   db: db,
                //   docId: docId,
                //   uploadStatus: FileUploadStatus.uploading,
                // );
                context.showSuccessSnackBar(
                  title: 'تم تغيير حالة الطلب',
                  message: FileUploadStatus.uploading.name,
                );
              },
            ),
            ListTile(
              title: const Text('مكتمل'),
              onTap: () {
                Navigator.pop(context);
                // _updateOrderStatus(
                //   db: db,
                //   docId: docId,
                //   uploadStatus: FileUploadStatus.uploaded,
                // );
                context.showSuccessSnackBar(
                  title: 'تم تغيير حالة الطلب',
                  message: FileUploadStatus.uploaded.name,
                );
              },
            ),
            ListTile(
              title: const Text('فاشل'),
              onTap: () async {
                Navigator.pop(context);
                await db.cachedDoc(
                  cachedDocsTableCompanion: cachedDoc
                      .toCreateCachedDocEntity()
                      .toCachedDocsTableCompanion(),
                );
                // db.cachedDoc
                // _updateOrderStatus(
                //   db: db,
                //   docId: docId,
                //   uploadStatus: FileUploadStatus.failed,
                // );
                context.showSuccessSnackBar(
                  title: 'تم تغيير حالة الطلب',
                  message: FileUploadStatus.failed.name,
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
  try {
    // await db.deleteDoc(docId: orderId);
    // final newDoc = CachedDocsCompanion(
    //   docId: Value(orderId),
    //   uploadStatus: const Value('uploading'),
    //   uploadProgress: Value(progress.toDouble()),
    // );
    // await db.insertDoc(doc: newDoc);
  } catch (e) {
    debugPrint('خطأ في تحديث نسبة التقدم: $e');
  }
}

Future<void> _clearOrderDocs({
  required BuildContext context,
  required int docId,
  required AppDatabase db,
}) async {
  await db.deleteDoc(docId: docId);
}

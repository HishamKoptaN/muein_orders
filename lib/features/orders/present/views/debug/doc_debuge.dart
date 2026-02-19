import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';

void showTestMenu({required BuildContext context, required int docId}) {
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
                // final savedData = await DocsDebuge().loadSavedData();
                //   await getIt<AppDatabase>().cachedDoc(
                //     doc: CachedDocEntity(
                //       docId: Value(docId),
                //       imageOne: Value(
                //         DocFile(
                //           path: savedData['imageOne'],
                //           type: DocFileType.imageOne,
                //           status: FileUploadStatus.pending,
                //         ),
                //       ),
                //       imageTwo: Value(
                //         DocFile(
                //           path: savedData['imageTwo'],
                //           type: DocFileType.imageTwo,
                //           status: FileUploadStatus.pending,
                //         ),
                //       ),
                //       videoOne: Value(
                //         DocFile(
                //           path: savedData['videoOne'],
                //           type: DocFileType.videoOne,
                //           status: FileUploadStatus.pending,
                //         ),
                //       ),
                //       videoTwo: Value(
                //         DocFile(
                //           path: savedData['videoTwo'],
                //           type: DocFileType.videoTwo,
                //           status: FileUploadStatus.pending,
                //         ),
                //       ),
                //       location: Value(
                //         LocationDoc(
                //           latitude: 37.7749,
                //           longitude: -122.4194,
                //           status: FileUploadStatus.pending,
                //         ),
                //       ),
                //       uploadStatus: const Value('pending'),
                //       uploadProgress: const Value(0),
                //     ),
                //   );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sync),
              title: const Text('تغيير حالة التوثيق'),
              onTap: () {
                Navigator.pop(context);
                _changeOrderStatus(
                  context: context,
                  docId: docId,
                  db: getIt<AppDatabase>(),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.trending_up),
              title: const Text('تغيير نسبة التقدم'),
              onTap: () {
                Navigator.pop(context);
                _changeUploadProgress(
                  context: context,
                  docId: docId,
                  db: getIt<AppDatabase>(),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text('مسح  التوثيق'),
              onTap: () {
                Navigator.pop(context);
                _clearOrderDocs(
                  context: context,
                  docId: docId,
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

void _changeOrderStatus({
  required BuildContext context,
  required int docId,
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
                _updateOrderStatus(
                  db: db,
                  docId: docId,
                  uploadStatus: FileUploadStatus.pending,
                );
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
                _updateOrderStatus(
                  db: db,
                  docId: docId,
                  uploadStatus: FileUploadStatus.uploading,
                );
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
                _updateOrderStatus(
                  db: db,
                  docId: docId,
                  uploadStatus: FileUploadStatus.uploaded,
                );
                context.showSuccessSnackBar(
                  title: 'تم تغيير حالة الطلب',
                  message: FileUploadStatus.uploaded.name,
                );
              },
            ),
            ListTile(
              title: const Text('فاشل'),
              onTap: () {
                Navigator.pop(context);
                _updateOrderStatus(
                  db: db,
                  docId: docId,
                  uploadStatus: FileUploadStatus.failed,
                );
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

Future<void> _updateOrderStatus({
  required AppDatabase db,
  required int docId,
  required FileUploadStatus uploadStatus,
}) async {
  try {
    await db.updateDocStatus(docId: docId, status: uploadStatus);
  } catch (e) {
    debugPrint('خطأ في تحديث حالة الطلب: $e');
  }
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

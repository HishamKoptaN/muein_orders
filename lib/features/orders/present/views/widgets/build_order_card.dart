import 'dart:math';

import 'package:drift/drift.dart' hide Column;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart'
    show AppDatabase, CachedDocsCompanion;
import '../../../../docs/domain/usecases/docs_use_cases.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';
import 'order_action_buttons.dart';
import 'order_doc_status.dart';

Widget buildDocOrderCard({
  required BuildContext context,
  required OrderEntity orderEntity,
  required int orderDocsCount,
  required AppLocalizations t,
  required StatEntity package,
}) {
  final db = getIt<AppDatabase>();
  return GestureDetector(
    onTap: () {
      if (kDebugMode) {
        _showTestMenu(context: context, orderEntity: orderEntity, db: db);
      }
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFF0EFEF)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(children: [SizedBox(width: 6)]),
                Text(
                  '#${orderEntity.sallaOrderId}',
                  style: const TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF323232),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            buildOrderDocStatus(
              context: context,
              orderEntity: orderEntity,
              t: t,
              onRetry: () async {
                try {
                  final docsUseCase = getIt<DocsUseCase>();
                  final db = getIt<AppDatabase>();
                  final failedDocs =
                      await (db.select(db.cachedDocs)..where(
                            (tbl) =>
                                tbl.orderId.equals(orderEntity.id ?? 0) &
                                tbl.uploadStatus.equals('failure'),
                          ))
                          .get();

                  if (failedDocs.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('لا توجد مستندات فاشلة لإعادة المحاولة'),
                      ),
                    );
                    return;
                  }

                  for (final doc in failedDocs) {
                    await docsUseCase.retryUpload(docId: doc.id);
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تم بدء إعادة المحاولة لـ ${failedDocs.length} مستند',
                      ),
                    ),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('خطأ في إعادة المحاولة: $e')),
                  );
                }
              },
            ),
            const SizedBox(height: 8),
            buildOrderActionButtons(
              orderEntity: orderEntity,
              orderDocsCount: orderDocsCount,
              t: t,
              productType: package,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ),
  );
}

void _showTestMenu({
  required BuildContext context,
  required OrderEntity orderEntity,
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
            const Text(
              'اختبار الطلب',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.sync),
              title: const Text('تغيير حالة الطلب'),
              onTap: () {
                Navigator.pop(context);
                _changeOrderStatus(
                  context: context,
                  orderEntity: orderEntity,
                  db: db,
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
                  orderEntity: orderEntity,
                  db: db,
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.refresh),
              title: const Text('مسح التوثيقات المحلية للطلب'),
              onTap: () {
                Navigator.pop(context);
                _clearOrderDocs(
                  context: context,
                  orderEntity: orderEntity,
                  db: db,
                );
              },
            ),
          ],
        ),
      );
    },
  );
}

Future<void> _clearOrderDocs({
  required BuildContext context,
  required OrderEntity orderEntity,
  required AppDatabase db,
}) async {
  final allDocs = await (db.select(
    db.cachedDocs,
  )..where((tbl) => tbl.orderId.equals(orderEntity.id ?? 0))).get();
  for (final doc in allDocs) {
    await db.deleteDoc(orderId: orderEntity.id ?? 0);
  }
}

void _changeOrderStatus({
  required BuildContext context,
  required OrderEntity orderEntity,
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
                  orderId: orderEntity.id ?? 0,
                  status: 'pending',
                );
              },
            ),
            ListTile(
              title: const Text('قيد التنفيذ'),
              onTap: () {
                Navigator.pop(context);
                _updateOrderStatus(
                  db: db,
                  orderId: orderEntity.id ?? 0,
                  status: 'uploading',
                );
              },
            ),
            ListTile(
              title: const Text('مكتمل'),
              onTap: () {
                Navigator.pop(context);
                _updateOrderStatus(
                  db: db,
                  orderId: orderEntity.id ?? 0,
                  status: 'success',
                );
              },
            ),
            ListTile(
              title: const Text('فاشل'),
              onTap: () {
                Navigator.pop(context);
                _updateOrderStatus(
                  db: db,
                  orderId: orderEntity.id ?? 0,
                  status: 'failure',
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
  required OrderEntity orderEntity,
  required AppDatabase db,
}) {
  final random = Random();
  final progress = random.nextInt(100);

  _updateUploadProgress(
    db: db,
    orderId: orderEntity.id ?? 0,
    progress: progress,
  );

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('تم تغيير نسبة التقدم إلى: $progress%'),
      duration: const Duration(seconds: 2),
    ),
  );
}

Future<void> _updateOrderStatus({
  required AppDatabase db,
  required int orderId,
  required String status,
}) async {
  try {
    await db.deleteDoc(orderId: orderId);
    final newDoc = CachedDocsCompanion(
      orderId: Value(orderId),
      uploadStatus: Value(status),
      uploadProgress: const Value(0),
    );

    await db.insertDoc(doc: newDoc);
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
    await db.deleteDoc(orderId: orderId);
    final newDoc = CachedDocsCompanion(
      orderId: Value(orderId),
      uploadStatus: const Value('uploading'),
      uploadProgress: Value(progress.toDouble()),
    );

    await db.insertDoc(doc: newDoc);
  } catch (e) {
    debugPrint('خطأ في تحديث نسبة التقدم: $e');
  }
}

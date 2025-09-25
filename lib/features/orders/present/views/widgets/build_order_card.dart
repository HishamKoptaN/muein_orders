import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../features/docs/present/views/add_doc_view.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../docs/data/datasources/local/drift/app_database.dart';
import '../../../../docs/domain/entities/cached_doc_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../pdf/sitcker_pdf_preview_view.dart';

Widget buildOrderCard({
  required BuildContext context,
  required OrderEntity? order,
  required AppLocalizations t,
}) {
  final db = getIt<AppDatabase>();
  return GestureDetector(
    onTap: () {
      NavigationService.navigateTo(
        context: context,
        routeName: AddDocView.routeName,
        arguments: {'orderId': order?.id},
      );
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
              offset: Offset(
                0,
                2,
              ),
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
                const Row(
                  children: [
                    SizedBox(width: 6),
                  ],
                ),
                Text(
                  order?.executionNum.toString() ?? '',
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
            SizedBox(
              height: 200,
              child: Builder(
                builder: (context) {
                  if (order?.isDistributionPhotographed == true) {
                    return _buildAcceptedWidget(
                      status: t.documented,
                      t: t,
                      statusColor: const Color(0xFF0062B7),
                    );
                  }
                  return StreamBuilder<List<CachedDoc>>(
                    stream: db.watchDocs(orderId: order!.id!).distinct(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasError) {
                        return _buildMessage(
                          key: const Key('error'),
                          text: '❌ خطأ: ${snapshot.error}',
                        );
                      }
                      final docs = snapshot.data ?? [];
                      if (docs.isEmpty) {
                        return _buildMessage(
                          key: const Key('no_docs'),
                          text: '📌 لا يوجد توثيق بعد',
                        );
                      }
                      return ListView.builder(
                        key: ValueKey(docs.length), // 👈 المفتاح هنا مهم
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          final doc = docs[index];
                          switch (doc.uploadStatus) {
                            case UploadStatus.pending:
                              return _buildMessage(
                                key: ValueKey('pending_$index'),
                                text: '⏳ في الانتظار',
                              );
                            case UploadStatus.uploading:
                              return Column(
                                key: ValueKey('uploading_$index'),
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildMessage(
                                    key: ValueKey('uploading_$index'),
                                    text: 'جاري رفع طلب ${doc.orderId}',
                                  ),
                                  LinearProgressIndicator(
                                    value: doc.uploadProgress / 100,
                                  ),
                                  _buildMessage(
                                    key: ValueKey('progress_$index'),
                                    text: 'الحالة: ${doc.uploadStatus}, '
                                        'Progress: ${doc.uploadProgress}%',
                                  ),
                                ],
                              );
                            case UploadStatus.success:
                              return _buildMessage(
                                key: ValueKey('success_$index'),
                                text: '✅ تم الرفع بنجاح',
                              );
                            case UploadStatus.failure:
                              return _buildMessage(
                                key: ValueKey('failure_$index'),
                                text: '❌ فشل الرفع',
                              );
                            default:
                              return _buildMessage(
                                key: ValueKey('default_$index'),
                                text: 'بانتظار التوثيق...',
                              );
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
            // OrderDocProgress(
            //   orderId: order!.id!,
            //   localDocsRepo: context.read<CachedDocsRepo>(),
            // ),
            // if (progress == 100) _buildDocumentedWidget(t),
            // if (progress == null || progress == 0) _buildNotDocumentedWidget(t),
            // if (progress != null && progress > 0 && progress < 100)
            //   _buildProgressIndicator(progress, t),
            const SizedBox(height: 8),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PdfPreviewView(
                        printedName: order?.printedName ?? 'غير معروف',
                        executionNum: order?.executionNum ?? 'N/A',
                      ),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF0062B7)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  t.sticker,
                  style: const TextStyle(
                    color: Color(0xFF0062B7),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ),
  );
}

Widget _buildMessage({required Key key, required String text}) {
  return Text(
    text,
    style: const TextStyle(color: Color(0xFF757575)),
  );
}

// Widget لعرض نسبة تقدم التوثيق
Widget _buildProgressIndicator(double progress, AppLocalizations t) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: const Color(0xFFF8F9FA),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xFFE9ECEF)),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.upload_file,
          size: 16,
          color: Color(0xFF0062B7),
        ),
        const SizedBox(width: 6),
        Text(
          '${t.documentationProgress}: ${progress.toStringAsFixed(0)}%',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0062B7),
            fontFamily: 'Almarai',
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 60,
          height: 4,
          child: LinearProgressIndicator(
            value: progress / 100,
            backgroundColor: const Color(0xFFE9ECEF),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF0062B7)),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    ),
  );
}

Widget _buildErrorWidget(AppLocalizations t) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF3E0),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xFFFFCC02)),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.warning_amber_rounded,
          size: 16,
          color: Color(0xFFFFA726),
        ),
        const SizedBox(width: 6),
        Text(
          t.notDocumented,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFFFFA726),
            fontFamily: 'Almarai',
          ),
        ),
      ],
    ),
  );
}

Widget _buildAcceptedWidget({
  required String status,
  required AppLocalizations t,
  required Color statusColor,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF3E0),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xFFFFCC02)),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          status,
          style: TextStyle(fontSize: 15, color: statusColor),
        ),
        const SizedBox(width: 6),
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
            color: statusColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    ),
  );
}

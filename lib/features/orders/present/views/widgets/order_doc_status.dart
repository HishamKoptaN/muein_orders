import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';

UploadStatus _stringToUploadStatus({
  required String status,
}) {
  return UploadStatus.values.firstWhere(
    (e) => e.name == status,
    orElse: () => UploadStatus.pending,
  );
}

Widget buildOrderDocStatus({
  required BuildContext context,
  required OrderEntity orderEntity,
  required AppLocalizations t,
  VoidCallback? onRetry,
}) {
  return Directionality(
    textDirection: Localizations.localeOf(context).languageCode == 'ar'
        ? TextDirection.rtl
        : TextDirection.ltr,
    child: SizedBox(
      height: 200,
      child: Builder(
        builder: (context) {
          if (orderEntity.isDistributionPhotographed == true) {
            return _buildMessage(
              key: const Key('no_docs'),
              text: t.documentationAndReviewIsUnderway,
              status: UploadStatus.pending,
            );
          }
          return StreamBuilder<List<CachedDoc>>(
            stream: createThrottledStream(
              getIt<AppDatabase>()
                  .watchDocs(orderId: orderEntity.id ?? 0)
                  .distinct(),
              throttleDuration: const Duration(
                milliseconds: 800,
              ),
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return _buildMessage(
                  key: const Key('error'),
                  text: '❌ خطأ: ${snapshot.error}',
                  status: UploadStatus.failure,
                );
              }
              final docs = snapshot.data ?? [];
              if (docs.isEmpty) {
                return _buildMessage(
                  key: const Key('no_docs'),
                  text: t.itHasNotBeenDocumentedUntilNow,
                  status: UploadStatus.pending,
                );
              }
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  final doc = docs[index];
                  final uploadStatus =
                      _stringToUploadStatus(status: doc.uploadStatus);
                  switch (uploadStatus) {
                    case UploadStatus.pending:
                      return _buildMessage(
                        key: ValueKey('pending_$index'),
                        text: t.pending,
                        status: UploadStatus.pending,
                      );
                    case UploadStatus.uploading:
                      return Column(
                        key: ValueKey('uploading_$index'),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildMessage(
                            key: ValueKey('uploading_$index'),
                            text: t.uploading,
                            status: UploadStatus.uploading,
                          ),
                          Text(
                            '${doc.uploadProgress.toStringAsFixed(1)}%',
                            style: const TextStyle(
                              color: Color(0xFF4CAF50),
                            ),
                          ),
                        ],
                      );
                    case UploadStatus.success:
                      return _buildMessage(
                        key: ValueKey('success_$index'),
                        text: t.success,
                        status: UploadStatus.success,
                      );
                    case UploadStatus.failure:
                      return Row(
                        key: ValueKey('failure_$index'),
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _buildMessage(
                            key: ValueKey('failure_$index'),
                            text: t.failure,
                            status: UploadStatus.failure,
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            key: ValueKey('retry_$index'),
                            onPressed: onRetry ?? () {},
                            icon: const Icon(
                              Icons.refresh,
                              color: Color(0xFFD8091E),
                              size: 20,
                            ),
                            tooltip: 'إعادة المحاولة',
                          ),
                        ],
                      );
                  }
                },
              );
            },
          );
        },
      ),
    ),
  );
}

Widget _buildMessage({
  required Key key,
  required String text,
  UploadStatus? status,
}) {
  Color getStatusColor() {
    switch (status) {
      case UploadStatus.failure:
        return const Color(0xFFD8091E);
      case UploadStatus.pending:
        return const Color(0xFFFF6B35);
      case UploadStatus.uploading:
        return const Color(0xFF4CAF50);
      case UploadStatus.success:
        return const Color(0xFF0062B7);
      default:
        return const Color(0xFF757575);
    }
  }

  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(
          color: getStatusColor(),
        ),
      ),
      const SizedBox(width: 5),
      Container(
        width: 13,
        height: 13,
        decoration: BoxDecoration(
          color: getStatusColor(),
          shape: BoxShape.circle,
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../features/cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../features/cached_docs/data/datasources/local/drift/app_database.dart';
import '../../di/dependency_injection.dart';
import '../../widgets/navigation/custom_app_bar.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  late final AppDatabase _db;
  late final Stream<List<CachedDocEntity>> _docsStream;

  @override
  void initState() {
    super.initState();
    _db = getIt<AppDatabase>();
    // _docsStream = _db.watchAllDocs().distinct();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      appBar: const CustomAppBar(title: 'الإشعارات'),
      body: StreamBuilder<List<CachedDocEntity>>(
        stream: _docsStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('خطأ في تحميل البيانات: ${snapshot.error}'),
            );
          }

          final docs = snapshot.data ?? [];

          // تصفية الطلبات قيد الرفع فقط
          final uploadingDocs = docs
              .where(
                (doc) =>
                    doc.uploadStatus == UploadStatus.uploading ||
                    doc.uploadStatus == UploadStatus.success ||
                    doc.uploadStatus == UploadStatus.failure,
              )
              .toList();

          if (uploadingDocs.isEmpty) {
            return _buildEmptyState(t);
          }

          return _buildNotificationsList(uploadingDocs, t);
        },
      ),
    );
  }

  Widget _buildEmptyState(AppLocalizations t) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications_none, size: 80, color: Colors.grey[400]),
          Gap(16.h),
          Text(
            'لا توجد إشعارات حالياً',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: Colors.grey[600]),
          ),
          Gap(8.h),
          Text(
            'ستظهر هنا إشعارات تقدم رفع التوثيقات',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationsList(
    List<CachedDocEntity> docs,
    AppLocalizations t,
  ) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: docs.length,
      itemBuilder: (context, index) {
        final doc = docs[index];
        return _buildNotificationCard(doc, t);
      },
    );
  }

  Widget _buildNotificationCard(CachedDocEntity doc, AppLocalizations t) {
    final statusColor = _getStatusColor(doc.uploadStatus);
    final statusText = _getStatusText(doc.uploadStatus, t);

    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'طلب رقم ${doc.orderId}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: statusColor),
                  ),
                  child: Text(
                    statusText,
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Gap(12.h),
            if (doc.uploadStatus == UploadStatus.uploading) ...[
              LinearProgressIndicator(
                value: doc.uploadProgress / 100,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(statusColor),
              ),
              Gap(8.h),
              Text(
                'التقدم: ${doc.uploadProgress.toStringAsFixed(1)}%',
                style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
              ),
            ],
            Gap(8.h),
            Text(
              _getDescriptionText(doc, t),
              style: TextStyle(fontSize: 12.sp, color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(UploadStatus status) {
    switch (status) {
      case UploadStatus.uploading:
        return Colors.blue;
      case UploadStatus.success:
        return Colors.green;
      case UploadStatus.failure:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  String _getStatusText(UploadStatus status, AppLocalizations t) {
    switch (status) {
      case UploadStatus.uploading:
        return 'جاري الرفع';
      case UploadStatus.success:
        return 'تم بنجاح';
      case UploadStatus.failure:
        return 'فشل';
      default:
        return 'غير محدد';
    }
  }

  String _getDescriptionText(CachedDocEntity doc, AppLocalizations t) {
    switch (doc.uploadStatus) {
      case UploadStatus.uploading:
        return 'جاري رفع توثيق الطلب في الخلفية';
      case UploadStatus.success:
        return 'تم رفع التوثيق بنجاح';
      case UploadStatus.failure:
        return 'فشل في رفع التوثيق، يمكن إعادة المحاولة';
      default:
        return '';
    }
  }
}

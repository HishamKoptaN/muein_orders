part of '../notifications_view_clean.dart';

class _NotificationItem extends StatelessWidget {
  final CachedDocEntity doc;

  const _NotificationItem({
    required this.doc,
  });

  @override
  Widget build(BuildContext context) {
    final uploadStatus = _getUploadStatus(doc.uploadStatus);
    final statusColor = _getStatusColor(uploadStatus);
    final progress = (doc.uploadProgress ?? 0.0) / 100.0;

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: statusColor.withOpacity(0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'طلب رقم ${doc.orderId}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: statusColor,
                    width: 1,
                  ),
                ),
                child: Text(
                  _getStatusText(uploadStatus),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: statusColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          if (uploadStatus == UploadStatus.uploading) ...[
            Text(
              'جاري رفع التوثيق...',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.h),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(statusColor),
              minHeight: 6.h,
            ),
            SizedBox(height: 4.h),
            Text(
              '${(doc.uploadProgress ?? 0.0).toStringAsFixed(0)}%',
              style: TextStyle(
                fontSize: 12.sp,
                color: statusColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ] else ...[
            Text(
              _getStatusDescription(uploadStatus),
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ],
      ),
    );
  }

  UploadStatus _getUploadStatus(UploadStatus status) {
    return status;
  }

  Color _getStatusColor(UploadStatus status) {
    switch (status) {
      case UploadStatus.uploading:
        return Colors.blue;
      case UploadStatus.success:
        return Colors.green;
      case UploadStatus.failure:
        return Colors.red;
      case UploadStatus.pending:
        return Colors.orange;
    }
  }

  String _getStatusText(UploadStatus status) {
    switch (status) {
      case UploadStatus.uploading:
        return 'جاري الرفع';
      case UploadStatus.success:
        return 'تم بنجاح';
      case UploadStatus.failure:
        return 'فشل';
      case UploadStatus.pending:
        return 'في الانتظار';
    }
  }

  String _getStatusDescription(UploadStatus status) {
    switch (status) {
      case UploadStatus.uploading:
        return 'جاري رفع التوثيق الآن';
      case UploadStatus.success:
        return 'تم رفع التوثيق بنجاح';
      case UploadStatus.failure:
        return 'فشل في رفع التوثيق';
      case UploadStatus.pending:
        return 'في انتظار الرفع';
    }
  }
}

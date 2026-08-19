import 'package:flutter/material.dart';
import 'cached_docs_table.dart';

extension FileUploadStatusUI on FileUploadStatus {
  String get label => switch (this) {
    FileUploadStatus.init => 'غير موثق',
    FileUploadStatus.pending => 'معلق',
    FileUploadStatus.uploading => 'جاري الرفع',
    FileUploadStatus.uploaded => 'تم الرفع',
    FileUploadStatus.failed => 'فشل الرفع',
  };
  IconData get icon => switch (this) {
    FileUploadStatus.init => Icons.new_releases_outlined,
    FileUploadStatus.pending => Icons.hourglass_empty,
    FileUploadStatus.uploading => Icons.cloud_upload,
    FileUploadStatus.uploaded => Icons.cloud_done,
    FileUploadStatus.failed => Icons.error_outline,
  };
  Color get color => switch (this) {
    FileUploadStatus.init => Colors.blue,
    FileUploadStatus.pending => Colors.orange,
    FileUploadStatus.uploading => Colors.blueAccent,
    FileUploadStatus.uploaded => Colors.green,
    FileUploadStatus.failed => Colors.red,
  };
}

extension NullableFileUploadStatusUI on FileUploadStatus? {
  String get filterTitle => switch (this) {
    FileUploadStatus.init => 'جديد',
    FileUploadStatus.pending => 'معلق',
    FileUploadStatus.uploading => 'جاري الرفع',
    FileUploadStatus.uploaded => 'تم الرفع',
    FileUploadStatus.failed => 'فشل الرفع',
    null => 'طلبات',
  };

  IconData get emptyIcon => switch (this) {
    FileUploadStatus.init => Icons.new_releases_outlined,
    FileUploadStatus.pending => Icons.hourglass_empty,
    FileUploadStatus.uploading => Icons.cloud_upload,
    FileUploadStatus.uploaded => Icons.cloud_done,
    FileUploadStatus.failed => Icons.error_outline,
    null => Icons.check_circle_outline,
  };
}

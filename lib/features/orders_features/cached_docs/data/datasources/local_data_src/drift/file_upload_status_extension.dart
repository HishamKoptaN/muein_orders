import 'package:flutter/material.dart';
import 'tables/items_table.dart';

extension FileUploadStatusUI on UploadStatus {
  String get label {
    return switch (this) {
      .init => 'لم يتم التوثيق حتي الان',
      .pending => 'منتظر',
      .uploading => 'جاري الرفع',
      .uploaded => 'تم الرفع',
      .failed => 'فشل الرفع',
    };
  }

  IconData get icon {
    return switch (this) {
      .init => Icons.new_releases_outlined,
      .pending => Icons.hourglass_empty,
      .uploading => Icons.cloud_upload,
      .uploaded => Icons.cloud_done,
      .failed => Icons.error_outline,
    };
  }

  Color get color {
    return switch (this) {
      .init => Colors.blue,
      .pending => Colors.orange,
      .uploading => Colors.blueAccent,
      .uploaded => Colors.green,
      .failed => Colors.red,
    };
  }
}

extension NullableFileUploadStatusUI on UploadStatus? {
  String get filterTitle {
    return switch (this) {
      .init => 'جديد',
      .pending => 'معلق',
      .uploading => 'جاري الرفع',
      .uploaded => 'تم الرفع',
      .failed => 'فشل الرفع',
      null => 'طلبات',
    };
  }

  IconData get emptyIcon {
    return switch (this) {
      .init => Icons.new_releases_outlined,
      .pending => Icons.hourglass_empty,
      .uploading => Icons.cloud_upload,
      .uploaded => Icons.cloud_done,
      .failed => Icons.error_outline,
      null => Icons.check_circle_outline,
    };
  }
}

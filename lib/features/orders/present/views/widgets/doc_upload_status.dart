import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import 'status_widget.dart';

Widget getStatus({
  required FileUploadStatus uploadStatus,
  required BuildContext context,
}) {
  switch (uploadStatus) {
    case FileUploadStatus.pending:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.hourglassHalf,
          color: Colors.orange,
          size: 22.w,
        ),
        color: Colors.orange,
      );
    case FileUploadStatus.uploading:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.blue,
          size: 22.w,
        ),
        color: Colors.blue,
      );
    case FileUploadStatus.uploaded:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.checkCircle,
          color: Colors.green,
          size: 22.w,
        ),
        text: 'تم الرفع',
        color: Colors.green,
      );
    case FileUploadStatus.failed:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.exclamationCircle,
          color: Colors.red,
          size: 22.w,
        ),
        text: 'فشل الرفع',
        color: Colors.red,
      );
    default:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.grey,
          size: 22.w,
        ),
        text: 'لم يرفع بعد',
        color: Colors.grey,
      );
  }
}

Widget uploadStatusSection({
  required BuildContext context,
  required CachedDocEntity? cachedDoc,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      getStatus(
        context: context,
        uploadStatus: cachedDoc?.uploadStatus ?? FileUploadStatus.init,
      ),
      SizedBox(height: 4.h),
      Text(
        'حالة رفع التوثيق',
        style: TextStyle(
          fontSize: 10.sp,
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

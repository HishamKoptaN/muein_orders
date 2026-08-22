import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../cached_docs/data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../../../docs/domain/entities/doc_entity.dart';
import '../status_widget.dart';

Widget getStatus({
  required UploadStatus uploadStatus,
  required BuildContext context,
}) {
  switch (uploadStatus) {
    case UploadStatus.pending:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.hourglassHalf,
          color: Colors.orange,
          size: 22.w,
        ),
        color: Colors.orange,
      );
    case UploadStatus.uploading:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.blue,
          size: 22.w,
        ),
        color: Colors.blue,
      );
    case UploadStatus.uploaded:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.checkCircle,
          color: Colors.green,
          size: 22.w,
        ),
        text: 'تم الرفع',
        color: Colors.green,
      );
    case UploadStatus.failed:
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
  required DocEntity? doc,
}) {
  return Column(
    mainAxisSize: .min,
    children: [
      getStatus(context: context, uploadStatus: doc?.uploadStatus ?? .init),
      Text('حالة رفع التوثيق', style: context.textTheme.bodySmall),
    ],
  );
}

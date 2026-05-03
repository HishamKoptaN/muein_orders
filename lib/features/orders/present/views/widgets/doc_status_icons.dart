import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';

Color getStatusColor({required FileUploadStatus? status}) {
  switch (status) {
    case FileUploadStatus.uploaded:
      return const Color(0xFF003A46);
    case FileUploadStatus.failed:
      return Colors.red;
    case FileUploadStatus.pending:
    case FileUploadStatus.uploading:
      return Colors.blue;
    default:
      return Colors.grey;
  }
}

Widget docFilesIcons({
  required int subCategoryId,
  required CachedDocEntity? cachedDoc,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    spacing: 5.h,
    children: [
      if (subCategoryId != 5) ...[
        Icon(
          Icons.add_photo_alternate_outlined,
          color: getStatusColor(status: cachedDoc?.files?[0].status),
          size: 24.sp,
        ),
        Icon(
          Icons.add_photo_alternate_outlined,
          color: getStatusColor(status: cachedDoc?.files?[1].status),
          size: 24.sp,
        ),
        Image.asset(
          'assets/icons/iconoir_add-media-video.png',
          color: getStatusColor(status: cachedDoc?.files?[3].status),
          width: 24.sp,
          height: 24.sp,
        ),
      ],
      Image.asset(
        'assets/icons/iconoir_add-media-video.png',
        color: getStatusColor(status: cachedDoc?.files?[2].status),
        width: 24.sp,
        height: 24.sp,
      ),
      if (subCategoryId != 5)
        Icon(
          Icons.location_on_rounded,
          color: getStatusColor(status: cachedDoc?.location?.status),
          size: 24.sp,
        ),
    ],
  );
}

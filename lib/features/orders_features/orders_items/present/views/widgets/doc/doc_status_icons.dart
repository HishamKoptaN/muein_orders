import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../../cached_docs/domain/entities/cached_doc_entity.dart';

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

Widget docFilesIcons({required CachedDocEntity? cachedDoc}) {
  return Column(
    mainAxisAlignment: .center,
    crossAxisAlignment: .center,
    mainAxisSize: .min,
    spacing: 4.h,
    children: [
      ...cachedDoc?.files?.map((file) {
            return _buildFileIcon(file: file);
          }) ??
          [],
      Icon(
        Icons.location_on_rounded,
        color: getStatusColor(status: cachedDoc?.location?.status),
        size: 24.r,
      ),
    ],
  );
}

Widget _buildFileIcon({required DocFile file}) {
  switch (file.type) {
    case .image:
      return Icon(
        Icons.add_photo_alternate_outlined,
        color: getStatusColor(status: file.status),
        size: 24.r,
      );
    case .video:
      return Image.asset(
        'assets/icons/iconoir_add-media-video.png',
        color: getStatusColor(status: file.status),
        width: 24.r,
        height: 24.r,
      );
  }
}

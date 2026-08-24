import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import '../../../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../../../docs/domain/entities/doc_entity.dart';

class DocFileIconsWidget extends StatelessWidget {
  const DocFileIconsWidget({super.key, required this.doc});
  final DocEntity doc;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 4.h,
      spacing: 10.h,
      children: [
        ...doc.files.map((file) {
          return buildFileIcon(file: file);
        }),
        Icon(
          Icons.location_on_rounded,
          color: getStatusColor(status: doc.locationUploadStatus),
          size: 24.r,
        ),
      ],
    );
  }

  Widget buildFileIcon({required DocMediaEntity file}) {
    switch (file.docMediaType) {
      case .image:
        return Icon(
          Icons.add_photo_alternate_outlined,
          color: getStatusColor(status: file.fileUploadStatus),
          size: 24.r,
        );
      case .video:
        return Image.asset(
          'assets/icons/iconoir_add-media-video.png',
          color: getStatusColor(status: file.fileUploadStatus),
          width: 24.r,
          height: 24.r,
        );
    }
  }

  Color getStatusColor({required UploadStatus status}) {
    switch (status) {
      case UploadStatus.uploaded:
        return Colors.green;
      case UploadStatus.failed:
        return Colors.red;
      case UploadStatus.pending:
        return Colors.orange;
      case UploadStatus.uploading:
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}

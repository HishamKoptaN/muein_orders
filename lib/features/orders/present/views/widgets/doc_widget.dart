import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../domain/entities/orders_res_entity.dart';

Widget docWidget({
  required BuildContext context,
  required DocEntity doc,
  required int subCategoryId,
  VoidCallback? onRetry,
}) {
  return StreamBuilder<CachedDocEntity>(
    stream: createThrottledStream(
      getIt<AppDatabase>().watchDoc(docId: doc.id).distinct(),
      throttleDuration: const Duration(milliseconds: 800),
    ),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      final cachedDoc = snapshot.data;
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 5.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5.h,
                  children: [
                    if (subCategoryId != 5) ...[
                      Icon(
                        Icons.add_photo_alternate_outlined,
                        color: getStatusColor(cachedDoc?.files?[0].status),
                        size: 24.sp,
                      ),
                      Icon(
                        Icons.add_photo_alternate_outlined,
                        color: getStatusColor(cachedDoc?.files?[1].status),
                        size: 24.sp,
                      ),

                      Image.asset(
                        'assets/icons/iconoir_add-media-video.png',
                        color: getStatusColor(cachedDoc?.files?[3].status),
                        width: 24.sp,
                        height: 24.sp,
                      ),
                    ],
                    Image.asset(
                      'assets/icons/iconoir_add-media-video.png',
                      color: getStatusColor(cachedDoc?.files?[2].status),
                      width: 24.sp,
                      height: 24.sp,
                    ),
                    if (subCategoryId != 5)
                      Icon(
                        Icons.location_on_rounded,
                        color: getStatusColor(cachedDoc?.location?.status),
                        size: 24.sp,
                      ),
                  ],
                ),
              ),
              Gap(40.w),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 25.h,
                  children: [
                    getStatus(
                      context: context,
                      uploadStatus:
                          cachedDoc?.uploadStatus ?? FileUploadStatus.init,
                    ),
                    OutlinedButton.icon(
                      onPressed: () {
                        NavigationService.pushNamed(
                          context: context,
                          routeName: AddCachedDocView.routeName,
                          extra: {
                            'cachedDoc': cachedDoc,
                            'subCategoryId': subCategoryId,
                          },
                        );
                      },
                      label: TrText(
                        cachedDoc?.uploadStatus != FileUploadStatus.init
                            ? 'عرض التوثيق'
                            : 'إضافة التوثيق',
                        style: TextStyle(
                          color:
                              cachedDoc?.uploadStatus != FileUploadStatus.init
                              ? const Color(0xFF003A46)
                              : Colors.grey[700],
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,

                          overflow: TextOverflow.ellipsis,
                        ),
                        softWrap: true,
                        maxLines: 2,
                      ),
                      icon: Icon(
                        cachedDoc?.uploadStatus != FileUploadStatus.init
                            ? Icons.visibility_outlined
                            : Icons.add_circle_outline,
                        color: cachedDoc?.uploadStatus != FileUploadStatus.init
                            ? const Color(0xFF003A46)
                            : Colors.grey[600],
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color:
                              cachedDoc?.uploadStatus != FileUploadStatus.init
                              ? const Color(0xFF003A46)
                              : Colors.grey[300]!,
                          width: 1.5,
                        ),
                        foregroundColor:
                            cachedDoc?.uploadStatus != FileUploadStatus.init
                            ? const Color(0xFF003A46).withValues(alpha: 0.1)
                            : Colors.grey.withValues(alpha: 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 6.h,
                          horizontal: 10.w,
                        ),
                      ),
                    ),
                    TrText(
                      doc.docStatus?.name ?? '',
                      style: TextStyle(
                        color: doc.docStatus?.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                    if (doc.copiesCount != null && doc.copiesCount! > 0)
                      Text(
                        'مصحف${doc.copiesCount}',
                        style: const TextStyle(
                          fontFamily: 'Almarai',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF323232),
                        ),
                      ),
                  ],
                ),
              ),
              Flexible(child: Container()),
            ],
          ),
        ],
      );
    },
  );
}

Color getStatusColor(FileUploadStatus? status) {
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
        icon: FaIcon(FontAwesomeIcons.upload, color: Colors.green, size: 22.w),
        color: Colors.green,
      );
    case FileUploadStatus.uploaded:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.cloudUpload,
          color: const Color(0xFF003A46),
          size: 22.w,
        ),
        text: 'تم الرفع',
        color: const Color(0xFF003A46),
      );
    case FileUploadStatus.failed:
      return StatusWidget(
        icon: FaIcon(
          FontAwesomeIcons.cloudscale,
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

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.icon,
    this.text,
    required this.color,
  });
  final Widget? icon;
  final String? text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (icon != null) icon!,
        SizedBox(width: 5.w),
        if (text != null)
          Flexible(
            child: TrText(
              text ?? '',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: color),
            ),
          ),
      ],
    );
  }
}

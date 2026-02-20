import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/build_context_extension.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../docs/domain/entities/docs_res_entity.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';

Widget docWidget({
  required BuildContext context,
  required DocEntity doc,
  VoidCallback? onRetry,
}) {
  return StreamBuilder<CachedDocEntity>(
    stream: createThrottledStream(
      getIt<AppDatabase>().watchDoc(docId: doc.id ?? 0).distinct(),
      throttleDuration: const Duration(milliseconds: 800),
    ),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      final cachedDoc = snapshot.data;
      return GestureDetector(
        onTap: () {},
        child: Column(
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
                        color: getStatusColor(cachedDoc?.files?[2].status),
                        width: 24.sp,
                        height: 24.sp,
                      ),
                      Image.asset(
                        'assets/icons/iconoir_add-media-video.png',
                        color: getStatusColor(cachedDoc?.files?[3].status),
                        width: 24.sp,
                        height: 24.sp,
                      ),

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
                            arguments: {
                              'docId': doc,
                              'cachedDoc': cachedDoc?.copyWith(docId: doc.id),
                              'subCategory': SubCategoryEntity(),
                            },
                          );
                        },
                        label: Text(
                          cachedDoc?.uploadStatus != FileUploadStatus.init
                              ? 'عرض التوثيق'
                              : context.t.add_documentation,
                          style: TextStyle(
                            color:
                                cachedDoc?.uploadStatus != FileUploadStatus.init
                                ? const Color(0xFF003A46)
                                : Colors.grey[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                        icon: Icon(
                          cachedDoc?.uploadStatus != FileUploadStatus.init
                              ? Icons.visibility_outlined
                              : Icons.add_circle_outline,
                          color:
                              cachedDoc?.uploadStatus != FileUploadStatus.init
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
                      Text(
                        doc.docStatus?.name ?? '',
                        style: TextStyle(
                          color: doc.docStatus?.textColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(child: Container()),
              ],
            ),
          ],
        ),
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
        text: context.t.pending,
        icon: FontAwesomeIcons.hourglassHalf,
        color: Colors.orange,
      );
    case FileUploadStatus.uploading:
      return StatusWidget(
        text: context.t.uploading,
        icon: FontAwesomeIcons.upload,
        color: Colors.green,
      );
    case FileUploadStatus.uploaded:
      return StatusWidget(
        text: context.t.success,
        icon: Icons.cloud_done,
        color: const Color(0xFF003A46),
      );
    case FileUploadStatus.failed:
      return StatusWidget(
        text: context.t.failed,
        icon: FontAwesomeIcons.cloudscale,
        color: Colors.red,
      );
    default:
      return StatusWidget(
        text: context.t.unknown,
        icon: FontAwesomeIcons.cloudArrowUp,
        color: Colors.grey,
      );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });
  final IconData? icon;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FaIcon(icon, color: color, size: 22.w),
        SizedBox(width: 5.w),
        Text(text, softWrap: true, style: TextStyle(color: color)),
      ],
    );
  }
}
                  // Text(
                  //   '${cachedDoc?.uploadProgress.toStringAsFixed(1)}%',
                  //   style: const TextStyle(color: Color(0xFF4CAF50)),
                  // ),
                  //           ],
                  //         );
                  //       case FileUploadStatus.failed:
                  //         return Row(
                  //           key: const ValueKey('failure'),
                  //           mainAxisSize: MainAxisSize.min,
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             _cachedDocStatusMessage(
                  //               key: const ValueKey('failure'),
                  //               text: context.t.failure,
                  //               uploadStatus: FileUploadStatus.failed,
                  //             ),
                  //             const SizedBox(width: 8),
                  //             IconButton(
                  //               key: const ValueKey('retry'),
                  //               onPressed: onRetry ?? () {},
                  //               icon: const Icon(
                  //                 Icons.refresh,
                  //                 color: Color(0xFFD8091E),
                  //                 size: 20,
                  //               ),
                  //               tooltip: 'إعادة المحاولة',
                  //             ),
                  //           ],
                  //         );
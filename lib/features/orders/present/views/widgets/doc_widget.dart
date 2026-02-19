import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/build_context_extension.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';

Widget docWidget({
  required BuildContext context,
  required int docId,
  VoidCallback? onRetry,
}) {
  return StreamBuilder<CachedDocEntity>(
    stream: createThrottledStream(
      getIt<AppDatabase>().watchDoc(docId: docId).distinct(),
      throttleDuration: const Duration(milliseconds: 800),
    ),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      final cachedDoc = snapshot.data;
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Builder(
                  builder: (context) {
                    switch (cachedDoc?.uploadStatus) {
                      case FileUploadStatus.init:
                        return _cachedDocStatusMessage(
                          key: const ValueKey('init'),
                          text: context.t.pending,
                          uploadStatus: FileUploadStatus.init,
                        );
                      case FileUploadStatus.pending:
                        return _cachedDocStatusMessage(
                          key: const ValueKey('pending'),
                          text: context.t.pending,
                          uploadStatus: FileUploadStatus.pending,
                        );
                      case FileUploadStatus.uploading:
                        return Column(
                          key: const ValueKey('uploading'),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _cachedDocStatusMessage(
                              key: const ValueKey('uploading'),
                              text: context.t.uploading,
                              uploadStatus: FileUploadStatus.uploading,
                            ),
                            // Text(
                            //   '${cachedDoc?.uploadProgress.toStringAsFixed(1)}%',
                            //   style: const TextStyle(color: Color(0xFF4CAF50)),
                            // ),
                          ],
                        );
                      case FileUploadStatus.uploaded:
                        return _cachedDocStatusMessage(
                          key: const ValueKey('success'),
                          text: context.t.success,
                          uploadStatus: FileUploadStatus.uploaded,
                        );
                      case FileUploadStatus.failed:
                        return Row(
                          key: const ValueKey('failure'),
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _cachedDocStatusMessage(
                              key: const ValueKey('failure'),
                              text: context.t.failure,
                              uploadStatus: FileUploadStatus.failed,
                            ),
                            const SizedBox(width: 8),
                            IconButton(
                              key: const ValueKey('retry'),
                              onPressed: onRetry ?? () {},
                              icon: const Icon(
                                Icons.refresh,
                                color: Color(0xFFD8091E),
                                size: 20,
                              ),
                              tooltip: 'إعادة المحاولة',
                            ),
                          ],
                        );
                      default:
                        return _cachedDocStatusMessage(
                          key: const ValueKey('initial'),
                          text: context.t.pending,
                          uploadStatus: FileUploadStatus.pending,
                        );
                    }
                  },
                ),
              ),
              Flexible(
                child: OutlinedButton.icon(
                  onPressed: () {
                    NavigationService.pushNamed(
                      context: context,
                      routeName: AddCachedDocView.routeName,
                      arguments: {
                        'docId': docId,
                        'cachedDoc': cachedDoc?.copyWith(docId: docId),
                        'subCategory': SubCategoryEntity(),
                      },
                    );
                  },
                  label: Text(
                    cachedDoc?.uploadStatus != FileUploadStatus.init
                        ? 'عرض التوثيق'
                        : context.t.add_documentation,
                    style: TextStyle(
                      color: cachedDoc?.uploadStatus != FileUploadStatus.init
                          ? const Color(0xFF00B769)
                          : Colors.grey[700],
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                    ),
                  ),
                  icon: Icon(
                    cachedDoc?.uploadStatus != FileUploadStatus.init
                        ? Icons.visibility_outlined
                        : Icons.add_circle_outline,
                    color: cachedDoc?.uploadStatus != FileUploadStatus.init
                        ? const Color(0xFF00B769)
                        : Colors.grey[600],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: cachedDoc?.uploadStatus != FileUploadStatus.init
                          ? const Color(0xFF00B769)
                          : Colors.grey[300]!,
                      width: 1.5,
                    ),
                    foregroundColor:
                        cachedDoc?.uploadStatus != FileUploadStatus.init
                        ? Colors.green.withOpacity(0.1)
                        : Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 6.h,
                      horizontal: 10.w,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

Widget _cachedDocStatusMessage({
  required Key key,
  required String text,
  FileUploadStatus? uploadStatus,
}) {
  Color getStatusColor() {
    switch (uploadStatus) {
      case FileUploadStatus.failed:
        return const Color(0xFFD8091E);
      case FileUploadStatus.pending:
        return const Color(0xFFFF6B35);
      case FileUploadStatus.uploading:
        return const Color(0xFF4CAF50);
      case FileUploadStatus.uploaded:
        return const Color(0xFF0062B7);
      default:
        return const Color(0xFFBDBDBD);
    }
  }

  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      if (uploadStatus == FileUploadStatus.uploading)
        const ContinuousFillIcon(
          icon: FontAwesomeIcons.upload,
          color: Colors.green,
        )
      else
        Container(
          width: 13.w,
          height: 13.w,
          decoration: BoxDecoration(
            color: getStatusColor(),
            shape: BoxShape.circle,
          ),
        ),
      SizedBox(width: 5.w),
      Text(text, softWrap: true, style: TextStyle(color: getStatusColor())),
    ],
  );
}

class ContinuousFillIcon extends StatefulWidget {
  final IconData icon;
  final Color color;

  const ContinuousFillIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  State<ContinuousFillIcon> createState() => _ContinuousFillIconState();
}

class _ContinuousFillIconState extends State<ContinuousFillIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [widget.color, widget.color.withOpacity(0.1)],
              stops: [_controller.value, _controller.value],
            ).createShader(rect);
          },
          child: Icon(widget.icon, size: 20, color: Colors.white),
        );
      },
    );
  }
}

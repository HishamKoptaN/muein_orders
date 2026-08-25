import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/widgets/translated_text.dart';
import '../../../../../docs/domain/entities/doc_entity.dart';
import '../../../../data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../../domain/entities/create_cached_doc_entity.dart';
import 'place_holder.dart';
import '../preview/preview_widget.dart';

class AddFileWidget extends StatefulWidget {
  const AddFileWidget({
    super.key,
    required this.updateDocMedia,
    this.onChanged,
    this.validator,
    this.errorText,
  });
  final UpdateDocMediaEntity updateDocMedia;
  final Function()? onChanged;
  final String? Function(String?)? validator;
  final String? errorText;
  @override
  State<AddFileWidget> createState() => _AddFileWidgetState();
}

class _AddFileWidgetState extends State<AddFileWidget> {
  @override
  Widget build(BuildContext context) {
    final hasPreview = widget.updateDocMedia.localFilePath.value.isNotEmpty;
    return Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () async {
                widget.onChanged!();
              },
              child: Container(
                height: 120.h,
                width: .infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: widget.errorText != null
                        ? Colors.red
                        : const Color(0xFFF0EFEF),
                  ),
                  borderRadius: .circular(6.r),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black12,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: hasPreview
                    ? PreviewWidget(updateDocMedia: widget.updateDocMedia)
                    : PlaceholderWidget(
                        docMediaType: widget.updateDocMedia.docMediaType,
                      ),
              ),
            ),
            if (widget.updateDocMedia.localFilePath.value.isNotEmpty)
              Positioned.directional(
                textDirection: Directionality.of(context),
                top: 8.h,
                start: 8.w,
                child: buildStatusIndicator(
                  docFileStatus: widget.updateDocMedia.fileUploadStatus,
                ),
              ),
          ],
        ),
        if (widget.errorText != null)
          Padding(
            padding: .only(top: 4.h, right: 8.w),
            child: TrText(
              widget.errorText!,
              style: TextStyle(color: Colors.red, fontSize: 14.sp),
            ),
          ),
      ],
    );
  }
}

Widget buildStatusIndicator({required UploadStatus docFileStatus}) {
  IconData icon;
  Color color;
  bool isRotating = false;
  switch (docFileStatus) {
    case UploadStatus.uploading:
      icon = Icons.sync;
      color = Colors.blue;
      isRotating = true;
      break;
    case UploadStatus.uploaded:
      icon = Icons.check_circle;
      color = Colors.green;
      break;
    case UploadStatus.failed:
      icon = Icons.error;
      color = Colors.red;
      break;
    case UploadStatus.pending:
    default:
      icon = Icons.cloud_upload_outlined;
      color = Colors.orange;
      break;
  }
  return Container(
    padding: .all(4.r),
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.9),
      shape: .circle,
      boxShadow: [
        BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 4),
      ],
    ),
    child: isRotating
        ? buildRotatingIcon(icon, color)
        : Icon(icon, color: color, size: 14.r),
  );
}

Widget buildRotatingIcon(IconData icon, Color color) {
  return RotationTransition(
    turns: AlwaysStoppedAnimation(DateTime.now().millisecond / 1000),
    child: Icon(icon, color: color, size: 14.r),
  );
}

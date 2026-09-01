import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../docs/domain/entities/doc_entity.dart';
import 'doc/doc_status_icons.dart';
import 'salla_order_item_card_widget.dart';

class SallaOrderItemUnitCardWidget extends StatefulWidget {
  const SallaOrderItemUnitCardWidget({
    super.key,
    required this.executionNumber,
    required this.printedName,
    required this.doc,
  });
  final String executionNumber;
  final String printedName;
  final DocEntity doc;

  @override
  State<SallaOrderItemUnitCardWidget> createState() =>
      _SallaOrderItemUnitCardWidgetState();
}

class _SallaOrderItemUnitCardWidgetState
    extends State<SallaOrderItemUnitCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        NavigationService.pushNamed(
          context: context,
          routeName: AddCachedDocView.routeName,
          extra: {'cachedDoc': widget.doc},
        );
      },
      child: Container(
        padding: .all(14.r),
        decoration: BoxDecoration(
          color: Colors.white,
          border: .all(color: const Color(0xFFF0EFEF)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: .circular(6.r),
        ),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisSize: .min,
          spacing: 2.h,
          children: [
            Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: .center,
                    mainAxisSize: .min,
                    children: [
                      Text(
                        widget.executionNumber,
                        style: context.textTheme.titleMedium?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                      DocFileIconsWidget(doc: widget.doc),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: .end,
                    mainAxisSize: .min,
                    spacing: 4.h,
                    children: [
                      getStatus(
                        context: context,
                        uploadStatus: widget.doc.uploadStatus,
                      ),
                      TrText(
                        widget.doc.docStatus.name,
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: widget.doc.docStatus.textColor,
                        ),
                      ),
                      MakeStickerPdfBtn(
                        executionNumber: widget.executionNumber,
                        printedName: widget.printedName,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getStatus({
    required UploadStatus uploadStatus,
    required BuildContext context,
  }) {
    switch (uploadStatus) {
      case UploadStatus.pending:
        return FaIcon(
          FontAwesomeIcons.hourglassHalf,
          color: Colors.orange,
          size: 22.w,
        );
      case UploadStatus.uploading:
        return FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.blue,
          size: 22.w,
        );
      case UploadStatus.uploaded:
        return FaIcon(
          FontAwesomeIcons.checkCircle,
          color: Colors.green,
          size: 22.w,
        );
      case UploadStatus.failed:
        return FaIcon(
          FontAwesomeIcons.exclamationCircle,
          color: Colors.red,
          size: 22.w,
        );
      default:
        return FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.grey,
          size: 22.w,
        );
    }
  }
}

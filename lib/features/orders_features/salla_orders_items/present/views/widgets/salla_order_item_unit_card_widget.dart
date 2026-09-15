import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/tables/items_table.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../docs/domain/entities/doc_entity.dart';
import '../../../domain/entities/salla_order_items_res_entity.dart';
import 'doc/doc_status_icons.dart';
import 'salla_order_item_card_widget.dart';

class SallaOrderItemUnitCardWidget extends StatelessWidget {
  const SallaOrderItemUnitCardWidget({
    super.key,
    required this.execuationTypeId,
    required this.item,
    required this.sallaOrderItemUnit,
    required this.doc,
  });
  final int execuationTypeId;
  final SallaOrderItemEntity item;
  final SallaOrderItemUnitEntity sallaOrderItemUnit;
  final DocEntity doc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.push(AddCachedDocView.routeName, extra: doc);
      },
      child: Card(
        child: Container(
          padding: .all(16.r),
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
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .start,
                      mainAxisSize: .min,
                      spacing: 2.h,
                      children: [
                        Card(
                          color: context.colorScheme.onPrimary,
                          child: Padding(
                            padding: .all(4.r),
                            child: Text(
                              item.sallaProduct.name,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: context.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: context.colorScheme.onPrimary,
                          child: Padding(
                            padding: .all(4.r),
                            child: Row(
                              children: [
                                Text(
                                  'رقم التنفيذ : ',
                                  style: context.textTheme.titleSmall?.copyWith(
                                    color: context.colorScheme.primary,
                                  ),
                                ),
                                Text(
                                  sallaOrderItemUnit.executionNumber,
                                  style: context.textTheme.titleSmall?.copyWith(
                                    color: context.colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        DocFileIconsWidget(doc: doc),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: .end,
                      mainAxisSize: .min,
                      spacing: 4.h,
                      children: [
                        getStatus(
                          context: context,
                          uploadStatus: doc.uploadStatus,
                        ),
                        TrText(
                          doc.docStatus.name,
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: doc.docStatus.textColor,
                          ),
                        ),
                        MakeStickerPdfBtn(
                          sallaProductId: item.sallaProduct.id,
                          executionNumber: sallaOrderItemUnit.executionNumber,
                          printedName: item.printedName,
                          execuationTypeId: execuationTypeId,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getStatus({
    required UploadStatus uploadStatus,
    required BuildContext context,
  }) {
    switch (uploadStatus) {
      case .pending:
        return FaIcon(
          FontAwesomeIcons.hourglassHalf,
          color: Colors.orange,
          size: 22.r,
        );
      case .uploading:
        return FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.blue,
          size: 22.r,
        );
      case .uploaded:
        return FaIcon(
          FontAwesomeIcons.checkCircle,
          color: Colors.green,
          size: 22.r,
        );
      case .failed:
        return FaIcon(
          FontAwesomeIcons.exclamationCircle,
          color: Colors.red,
          size: 22.r,
        );
      default:
        return FaIcon(
          FontAwesomeIcons.cloudArrowUp,
          color: Colors.grey,
          size: 22.r,
        );
    }
  }
}

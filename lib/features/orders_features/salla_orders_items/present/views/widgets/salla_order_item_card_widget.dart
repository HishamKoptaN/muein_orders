import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../data/models/sticker_pdf_preview_args.dart';
import '../../../domain/entities/salla_order_items_res_entity.dart';
import '../sitcker_pdf/sitcker_pdf_preview_view.dart';
import 'salla_order_item_unit_card_widget.dart';

class SallaOrderItemCardWidget extends StatelessWidget {
  final SallaOrderItemEntity item;
  final int execuationTypeId;
  const SallaOrderItemCardWidget({
    super.key,
    required this.item,
    required this.execuationTypeId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 2.w),
      child: Container(
        padding: .all(6.r),
        decoration: BoxDecoration(
          color: Colors.white,
          border: .all(color: const Color(0xFFF0EFEF)),
          borderRadius: .circular(6.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: item.sallaOrderItemUnits.length,
          separatorBuilder: (context, index) {
            return Gap(8.h);
          },
          itemBuilder: (context, index) {
            final sallaOrderItemUnit = item.sallaOrderItemUnits[index];
            return Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: sallaOrderItemUnit.docs.length,
                  separatorBuilder: (context, index) {
                    return Gap(8.h);
                  },
                  itemBuilder: (context, i) {
                    return SallaOrderItemUnitCardWidget(
                      execuationTypeId: execuationTypeId,
                      item: item,
                      sallaOrderItemUnit: sallaOrderItemUnit,
                      doc: sallaOrderItemUnit.docs[i],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MakeStickerPdfBtn extends StatelessWidget {
  final int sallaProductId;
  final String printedName;
  final String executionNumber;
  final int execuationTypeId;
  const MakeStickerPdfBtn({
    super.key,
    required this.sallaProductId,
    required this.printedName,
    required this.executionNumber,
    required this.execuationTypeId,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.push(
          StickerPdfPreviewView.routeName,
          extra: StickerPdfPreviewArgs(
            execuationTypeId: execuationTypeId,
            sallaProductId: sallaProductId,
            executionNum: executionNumber,
            printedName: printedName,
          ),
        );
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF0062B7)),
        shape: RoundedRectangleBorder(borderRadius: .circular(8)),
      ),
      child: const TrText(
        'الملصق',
        style: TextStyle(color: Color(0xFF0062B7), fontWeight: FontWeight.w700),
      ),
    );
  }
}

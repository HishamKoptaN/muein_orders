import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../domain/entities/salla_order_items_res_entity.dart';
import '../sitcker_pdf/sitcker_pdf_preview_view.dart';
import 'salla_order_item_unit_card_widget.dart';

class SallaOrderItemCardWidget extends StatelessWidget {
  final List<SallaOrderItemUnitEntity> sallaOrderItemUnits;
  const SallaOrderItemCardWidget({
    super.key,
    required this.sallaOrderItemUnits,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 2.w),
      child: Container(
        padding: .all(12.r),
        decoration: BoxDecoration(
          color: Colors.white,
          border: .all(color: const Color(0xFFF0EFEF)),
          borderRadius: .circular(12.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: sallaOrderItemUnits.length,
          itemBuilder: (context, index) {
            final sallaOrderItemUnit = sallaOrderItemUnits[index];
            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: sallaOrderItemUnit.docs.length,
                  itemBuilder: (context, index) {
                    final doc = sallaOrderItemUnit.docs[index];
                    return SallaOrderItemUnitCardWidget(
                      executionNumber: sallaOrderItemUnit.executionNumber,
                      doc: doc,
                      printedName: '',
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
  final String printedName;
  final String executionNumber;
  const MakeStickerPdfBtn({
    super.key,
    required this.executionNumber,
    required this.printedName,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200.w,
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return PdfPreviewView(
                    printedName: printedName,
                    executionNum: executionNumber,
                  );
                },
              ),
            );
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xFF0062B7)),
            shape: RoundedRectangleBorder(borderRadius: .circular(8)),
            padding: const .symmetric(vertical: 12, horizontal: 16),
          ),
          child: const TrText(
            'الملصق',
            style: TextStyle(
              color: Color(0xFF0062B7),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

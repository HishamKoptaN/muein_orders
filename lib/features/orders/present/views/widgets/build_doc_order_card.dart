import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/translated_text.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../sitcker_pdf/sitcker_pdf_preview_view.dart';
import 'doc_card_widget.dart';

Widget buildDocOrderCard({
  required BuildContext context,
  required OrderEntity order,
  required int orderDocsCount,
  required StatEntity stat,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF0EFEF)),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15.h,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${order.sallaOrderId}#',
                style: const TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF323232),
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: order.docs.length,
            itemBuilder: (context, index) {
              final doc = order.docs[index];
              return DocCardWidget(
                doc: doc,
                subCategoryId: stat.subCategory?.id ?? 0,
              );
            },
          ),

          MakeStickerPdfBtn(order: order),
        ],
      ),
    ),
  );
}

class MakeStickerPdfBtn extends StatelessWidget {
  final OrderEntity order;
  const MakeStickerPdfBtn({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200.w,
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PdfPreviewView(
                  printedName: order.printedName,
                  executionNum: order.executionNumber ?? '0',
                ),
              ),
            );
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xFF0062B7)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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

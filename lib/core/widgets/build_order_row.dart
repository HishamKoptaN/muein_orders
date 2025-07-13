import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/widgets/widget_column_header.dart';
import '../../features/orders/domain/entities/orders_res_entity.dart';
import '../../features/orders/present/views/pdf/sitcker_pdf_preview_view.dart';

Widget buildOrderRow({
  required OrderEntity order,
  required t,
  required BuildContext context,
}) {
  return Container(
    height: 75.h,
    child: Row(
      children: [
        Expanded(
          flex: 4,
          child: buildTransactionDetail(text: order.printedName ?? ''),
        ),
        Expanded(
          flex: 2,
          child: buildTransactionDetail(text: order.executionNum ?? ''),
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => PdfPreviewView(
                  executionNum: order.executionNum ?? '',
                  printedName: order.printedName ?? '',
                ),
              ));
            },
            child: Icon(
              FontAwesomeIcons.filePdf,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Visibility(
            visible: order.isDistributionPhotographed == true,
            child: Center(
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 24.sp,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

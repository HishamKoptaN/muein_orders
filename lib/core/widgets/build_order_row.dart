import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/widgets/widget_column_header.dart';
import '../../features/orders/domain/entities/orders_res_entity.dart';
import '../../features/orders/present/views/pdf/sitcker_pdf_preview_view.dart';
import '../../gen/assets.gen.dart';

Widget buildOrderRow({
  required OrderEntity order,
  required t,
  required BuildContext context,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 6.h,
    ),
    child: Container(
      height: 56.h,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 247, 1),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PdfPreviewView(
                      executionNum: order.executionNum ?? '',
                      printedName: order.printedName ?? '',
                    ),
                  ),
                );
              },
              child: SvgPicture.asset(
                Assets.icons.pdf,
                fit: BoxFit.contain,
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
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

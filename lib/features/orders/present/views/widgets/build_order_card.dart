import 'package:flutter/material.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../pdf/sitcker_pdf_preview_view.dart';

Widget buildOrderCard({
  OrderEntity? order,
  String? dedication,
  String? package,
  required String status,
  required Color statusColor,
  required Function() onTap,
  required AppLocalizations t,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFF0EFEF)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(
                0,
                2,
              ),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    // Icon(Icons.flag, color: Colors.red, size: 18),
                    SizedBox(width: 6),
                  ],
                ),
                Text(
                  order?.executionNum.toString() ?? '',
                  style: const TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF323232),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  status,
                  style: TextStyle(fontSize: 15, color: statusColor),
                ),
                const SizedBox(width: 6),
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    color: statusColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  if (order != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PdfPreviewView(
                          printedName: order.printedName ?? 'غير معروف',
                          executionNum: order.executionNum ?? 'N/A',
                        ),
                      ),
                    );
                  }
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF0062B7)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  t.sticker,
                  style: const TextStyle(
                    color: Color(0xFF0062B7),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ),
  );
}

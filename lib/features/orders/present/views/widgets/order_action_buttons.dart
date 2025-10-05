import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../docs/data/datasources/local/drift/app_database.dart';
import '../../../../docs/present/views/add_cached_doc_view.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../pdf/sitcker_pdf_preview_view.dart';

Widget buildOrderActionButtons({
  required OrderEntity orderEntity,
  required int orderDocsCount,
  required AppLocalizations t,
  required PackageEntity package,
}) {
  return Center(
    child: FutureBuilder<int>(
      future: getIt<AppDatabase>().getAllDocs().then(
            (allDocs) =>
                allDocs.where((doc) => doc.orderId == orderEntity.id).length,
          ),
      builder: (context, snapshot) {
        final currentDocsCount = snapshot.data ?? 0;
        final canAddMoreDocs = currentDocsCount < orderDocsCount;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (canAddMoreDocs)
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    NavigationService.navigateTo(
                      context: context,
                      routeName: AddCachedDocView.routeName,
                      arguments: {
                        'orderId': orderEntity.id,
                        'package': package,
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text(t.addDocumentation),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            if (canAddMoreDocs) const SizedBox(width: 12),
            Expanded(
              flex: canAddMoreDocs ? 1 : 2,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PdfPreviewView(
                        printedName: orderEntity.printedName ?? 'غير معروف',
                        executionNum: orderEntity.executionNum ?? 'N/A',
                      ),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF0062B7)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
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
          ],
        );
      },
    ),
  );
}

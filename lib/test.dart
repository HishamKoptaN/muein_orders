
import 'package:flutter/material.dart';

import 'features/orders_features/salla_orders_items/data/models/sticker_pdf_preview_args.dart';
import 'features/orders_features/salla_orders_items/present/views/sitcker_pdf/sitcker_pdf_preview_view.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});
  static const String routeName = 'test-view';

  @override
  Widget build(BuildContext context) {
    return const StickerPdfPreviewView(
      stickerPdfPreviewArgs: StickerPdfPreviewArgs(
        execuationTypeId: 1,
        sallaProductId: 1,
        executionNum: '1',
        printedName: 'صدقة جارية عن والدتي',    
      ),
    );
  }
}

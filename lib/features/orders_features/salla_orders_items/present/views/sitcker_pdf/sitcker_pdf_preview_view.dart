import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../data/models/sticker_pdf_preview_args.dart';
import 'types/dates_sitcker_pdf.dart';
import 'types/quran_sitcker_pdf.dart';

class StickerPdfPreviewView extends StatelessWidget {
  final StickerPdfPreviewArgs stickerPdfPreviewArgs;
  const StickerPdfPreviewView({super.key, required this.stickerPdfPreviewArgs});
  static const routeName = 'pdf-preview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TrText('الاستيكر')),
      body: Directionality(
        textDirection: .rtl,
        child: PdfPreview(
          canChangeOrientation: false,
          canChangePageFormat: false,
          initialPageFormat: .a4.landscape,
          build: (format) async {
            switch (stickerPdfPreviewArgs.execuationTypeId) {
              case 5:
                return await DatesStickerPdf.build(
                  isSingle: stickerPdfPreviewArgs.sallaProductId == 224011248
                      ? true
                      : false,
                  printedName: stickerPdfPreviewArgs.printedName,
                  executionNum: stickerPdfPreviewArgs.executionNum,
                );
              default:
                return await QuranStickerPdf.build(
                  printedName: stickerPdfPreviewArgs.printedName,
                  executionNum: stickerPdfPreviewArgs.executionNum,
                );
            }
          },
        ),
      ),
    );
  }
}

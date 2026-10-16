import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

abstract class QuranStickerPdf {
  static Future<Uint8List> build({
    required String printedName,
    required String executionNum,
  }) async {
    final pdf = pw.Document();
    final backgroundImage = pw.MemoryImage(
      (await rootBundle.load('assets/images/sticker_mushef.png')).buffer
          .asUint8List(),
    );
    final stickerLogo = pw.MemoryImage(
      (await rootBundle.load('assets/images/sticker_logo.png')).buffer
          .asUint8List(),
    );
    final vector = pw.MemoryImage(
      (await rootBundle.load('assets/images/Vector.png')).buffer.asUint8List(),
    );
    final fontDataBold = await rootBundle.load('assets/fonts/Tajawal-Bold.ttf');
    final tajawalBold = pw.Font.ttf(fontDataBold);

    pw.Widget buildSingleCard() {
      return pw.Container(
        height: 380,
        width: 250,
        decoration: pw.BoxDecoration(
          border: pw.Border.all(color: PdfColors.grey300, width: 0.5),
        ),
        child: pw.Stack(
          children: [
            pw.Positioned.fill(
              child: pw.Image(backgroundImage, fit: pw.BoxFit.cover),
            ),
            pw.Center(
              child: pw.Padding(
                padding: const pw.EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.SizedBox(height: 50),
                    pw.Directionality(
                      textDirection: pw.TextDirection.rtl,
                      child: pw.Text(
                        printedName,
                        style: pw.TextStyle(
                          font: tajawalBold,
                          fontSize: 18,
                          color: PdfColor.fromHex('#003A46'),
                        ),
                        textAlign: pw.TextAlign.center,
                      ),
                    ),
                    pw.SizedBox(
                      height: 120,
                      width: 150,
                      child: pw.Image(stickerLogo, fit: pw.BoxFit.contain),
                    ),
                    pw.Directionality(
                      textDirection: pw.TextDirection.rtl,
                      child: pw.Text(
                        'تم طباعة هذا المصحف الشريف بإشراف من\nمتجر معين للقرآن الكريم',
                        style: pw.TextStyle(
                          font: tajawalBold,
                          fontSize: 13,
                          color: PdfColor.fromHex('#003A46'),
                          height: 1.4,
                        ),
                        textAlign: pw.TextAlign.center,
                      ),
                    ),
                    pw.Directionality(
                      textDirection: pw.TextDirection.rtl,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
                          pw.Text(
                            'رقم التنفيذ : ',
                            style: pw.TextStyle(
                              font: tajawalBold,
                              fontSize: 18,
                              color: PdfColor.fromHex('#003A46'),
                            ),
                          ),
                          pw.Text(
                            executionNum,
                            style: pw.TextStyle(
                              font: tajawalBold,
                              fontSize: 14,
                              color: PdfColor.fromHex('#003A46'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.Column(
                      children: [
                        pw.Directionality(
                          textDirection: pw.TextDirection.rtl,
                          child: pw.Text(
                            'للتواصل أو الطلب',
                            style: pw.TextStyle(
                              font: tajawalBold,
                              fontSize: 12,
                              color: PdfColor.fromHex('#003A46'),
                            ),
                            textAlign: pw.TextAlign.center,
                          ),
                        ),
                        pw.SizedBox(height: 4),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          children: [
                            pw.SizedBox(
                              height: 16,
                              width: 16,
                              child: pw.Image(vector),
                            ),
                            pw.SizedBox(width: 4),
                            pw.Directionality(
                              textDirection: pw.TextDirection.rtl,
                              child: pw.Text(
                                '+966 55 492 0333',
                                style: pw.TextStyle(
                                  font: tajawalBold,
                                  fontSize: 13,
                                  color: PdfColor.fromHex('#003A46'),
                                ),
                                textAlign: pw.TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(20),
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                buildSingleCard(),
                buildSingleCard(),
                buildSingleCard(),
                buildSingleCard(),
              ],
            ),
          );
        },
      ),
    );
    return pdf.save();
  }
}

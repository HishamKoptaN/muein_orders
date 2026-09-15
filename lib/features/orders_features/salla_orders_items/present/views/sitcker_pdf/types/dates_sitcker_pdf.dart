import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

abstract class DatesStickerPdf {
  static Future<Uint8List> build({
    required bool isSingle,
    required String printedName,
    required String executionNum,
  }) async {
    final pdf = pw.Document();
    final logoImage = pw.MemoryImage(
      (await rootBundle.load(
        'assets/images/sticker_logo.png',
      )).buffer.asUint8List(),
    );
    final fontDataBold = await rootBundle.load('assets/fonts/Tajawal-Bold.ttf');
    final tajawalBold = pw.Font.ttf(fontDataBold);
    pw.Widget buildSingleCard() {
      return pw.Padding(
        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
        child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Container(
              height: 100,
              child: pw.Image(logoImage, fit: pw.BoxFit.contain),
            ),
            pw.SizedBox(height: 40),
            pw.Container(
              height: 30,
              child: pw.Directionality(
                textDirection: pw.TextDirection.rtl,
                child: pw.Text(
                  printedName,
                  style: pw.TextStyle(
                    font: tajawalBold,
                    fontSize: 22,
                    color: PdfColor.fromHex('#003A46'),
                    height: 1.8,
                  ),
                  textAlign: pw.TextAlign.center,
                ),
              ),
            ),
            pw.SizedBox(height: 40),
            pw.Align(
              alignment: pw.Alignment.centerRight,
              child: pw.Container(
                height: 40,
                child: pw.Directionality(
                  textDirection: pw.TextDirection.rtl,
                  child: pw.Text(
                    'رقم التنفيذ: $executionNum',
                    style: pw.TextStyle(
                      font: tajawalBold,
                      fontSize: 20,
                      color: PdfColor.fromHex('#003A46'),
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    pdf.addPage(
      pw.Page(
        pageFormat: .a4,
        orientation: pw.PageOrientation.landscape,
        margin: const pw.EdgeInsets.all(20),
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Expanded(
                child: pw.Row(
                  children: [
                    pw.Expanded(child: buildSingleCard()),
                    pw.Expanded(
                      child: !isSingle
                          ? buildSingleCard()
                          : pw.SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
              pw.Expanded(
                child: pw.Row(
                  children: [
                    pw.Expanded(
                      child: !isSingle
                          ? buildSingleCard()
                          : pw.SizedBox.shrink(),
                    ),
                    pw.Expanded(child: pw.SizedBox.shrink()),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
    return pdf.save();
  }
}

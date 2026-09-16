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
        padding: const pw.EdgeInsets.all(30),
        child: pw.Directionality(
          textDirection: .rtl,
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Expanded(
                flex: 2,
                child: pw.Image(logoImage, fit: pw.BoxFit.contain),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Align(
                  alignment: pw.Alignment.center,
                  child: pw.Text(
                    printedName,
                    textAlign: pw.TextAlign.center,
                    style: pw.TextStyle(
                      font: tajawalBold,
                      fontSize: 24,
                      height: 1.8,
                    ),
                  ),
                ),
              ),
              pw.Expanded(
                child: pw.Align(
                  alignment: pw.Alignment.bottomRight,
                  child: pw.Text(
                    'رقم التنفيذ: $executionNum',
                    textAlign: pw.TextAlign.right,
                    style: pw.TextStyle(
                      font: tajawalBold,
                      fontSize: 20,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    pw.Widget buildVerticalDivider() {
      return pw.Container(width: 0.2, color: PdfColors.grey500);
    }

    pw.Widget buildHorizontalDivider() {
      return pw.Container(height: 0.2, color: PdfColors.grey500);
    }

    pdf.addPage(
      pw.Page(
        orientation: pw.PageOrientation.landscape,
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) {
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Expanded(
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Expanded(child: buildSingleCard()),
                    buildVerticalDivider(),
                    pw.Expanded(
                      child: !isSingle
                          ? buildSingleCard()
                          : pw.SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
              buildHorizontalDivider(),
              pw.Expanded(
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Expanded(
                      child: !isSingle
                          ? buildSingleCard()
                          : pw.SizedBox.shrink(),
                    ),
                    buildVerticalDivider(),
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

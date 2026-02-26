import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../../../core/widgets/translated_text.dart';

class PdfPreviewView extends StatelessWidget {
  final String printedName;
  final String executionNum;
  const PdfPreviewView({
    super.key,
    required this.printedName,
    required this.executionNum,
  });
  static const routeName = 'pdf-preview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const TrText('الملصق', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: PdfPreview(build: (format) => _buildPdf(format: format)),
      ),
    );
  }

  Future<Uint8List> _buildPdf({required PdfPageFormat format}) async {
    final pdf = pw.Document();
    final backgroundImage = pw.MemoryImage(
      (await rootBundle.load(
        'assets/images/sticker_mushef.png',
      )).buffer.asUint8List(),
    );
    final logoImage = pw.MemoryImage(
      (await rootBundle.load(
        'assets/images/sticker_logo.png',
      )).buffer.asUint8List(),
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
                padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.SizedBox(height: 65),
                    pw.Container(
                      height: 30,
                      child: pw.Directionality(
                        textDirection: pw.TextDirection.rtl,
                        child: pw.Text(
                          printedName,
                          style: pw.TextStyle(
                            font: tajawalBold,
                            fontSize: 18,
                            color: PdfColor.fromHex('#003A46'),
                            height: 1.8,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                      ),
                    ),
                    pw.Container(
                      height: 90,
                      child: pw.Image(logoImage, fit: pw.BoxFit.fill),
                    ),
                    pw.Container(
                      height: 75,
                      child: pw.Directionality(
                        textDirection: pw.TextDirection.rtl,
                        child: pw.Text(
                          'تم طباعة هذا المصحف الشريف بإشراف من متجر معين للقرآن الكريم',
                          style: pw.TextStyle(
                            font: tajawalBold,
                            fontSize: 16,
                            color: PdfColor.fromHex('#003A46'),
                            height: 1.4,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                      ),
                    ),
                    pw.Container(
                      height: 40,
                      child: pw.Directionality(
                        textDirection: pw.TextDirection.rtl,
                        child: pw.Text(
                          'رقم التنفيذ: $executionNum',
                          style: pw.TextStyle(
                            font: tajawalBold,
                            fontSize: 16,
                            color: PdfColor.fromHex('#003A46'),
                            height: 1.4,
                          ),
                          textAlign: pw.TextAlign.right,
                        ),
                      ),
                    ),
                    pw.Container(
                      height: 15,
                      child: pw.Directionality(
                        textDirection: pw.TextDirection.rtl,
                        child: pw.Text(
                          'للتواصل أو الطلب',
                          style: pw.TextStyle(
                            font: tajawalBold,
                            fontSize: 14,
                            color: PdfColor.fromHex('#003A46'),
                            height: 1.4,
                          ),
                          textAlign: pw.TextAlign.center,
                        ),
                      ),
                    ),
                    pw.Container(
                      height: 35,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
                          pw.SizedBox(
                            height: 20,
                            width: 20,
                            child: pw.Image(vector),
                          ),
                          pw.SizedBox(width: 4),
                          pw.Directionality(
                            textDirection: pw.TextDirection.rtl,
                            child: pw.Text(
                              '+966 55 492 0333',
                              style: pw.TextStyle(
                                font: tajawalBold,
                                fontSize: 14,
                                color: PdfColor.fromHex('#003A46'),
                                height: 1.4,
                              ),
                              textAlign: pw.TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
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

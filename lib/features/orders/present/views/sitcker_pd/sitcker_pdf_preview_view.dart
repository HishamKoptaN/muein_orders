import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../../../core/widgets/translated_text.dart';
import '../../../../../l10n/app_localizations.dart';

class PdfPreviewView extends StatelessWidget {
  final String printedName;
  final String executionNum;
  const PdfPreviewView({
    super.key,
    required this.printedName,
    required this.executionNum,
  });
  static const routeName = 'pdf-preview';
  Future<Uint8List> _buildPdf({required PdfPageFormat format}) async {
    final pdf = pw.Document();
    final img = pw.MemoryImage(
      (await rootBundle.load(
        'assets/logos/logo_solid.png',
      )).buffer.asUint8List(),
    );
    pw.MemoryImage blackImg;
    try {
      blackImg = pw.MemoryImage(
        (await rootBundle.load(
          'assets/logos/logo_black.png',
        )).buffer.asUint8List(),
      );
    } catch (e) {
      blackImg = img;
    }
    final fontDataBold = await rootBundle.load('assets/fonts/Tajawal-Bold.ttf');
    final fontDataLight = await rootBundle.load(
      'assets/fonts/Tajawal-Medium.ttf',
    );
    final tajawalLight = pw.Font.ttf(fontDataLight);
    final tajawalBold = pw.Font.ttf(fontDataBold);
    pw.Widget buildCard() {
      return pw.Container(
        padding: const pw.EdgeInsets.all(8),
        child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Spacer(flex: 3),
            pw.Directionality(
              textDirection: pw.TextDirection.rtl,
              child: pw.Text(
                printedName,
                style: pw.TextStyle(font: tajawalLight, fontSize: 18),
                textAlign: pw.TextAlign.center,
              ),
            ),
            pw.Spacer(flex: 1),
            pw.Text(
              executionNum,
              style: const pw.TextStyle(fontSize: 12),
              textAlign: pw.TextAlign.center,
            ),
            pw.Spacer(flex: 1),
            pw.Image(blackImg, height: 40),
            pw.SizedBox(height: 5.h),
            pw.Directionality(
              textDirection: pw.TextDirection.rtl,
              child: pw.Text(
                'للتواصل',
                style: pw.TextStyle(font: tajawalBold, fontSize: 12),
              ),
            ),
            pw.SizedBox(height: 5.h),
            pw.Directionality(
              textDirection: pw.TextDirection.rtl,
              child: pw.Text(
                '+966 55 412 1282',
                style: pw.TextStyle(font: tajawalBold, fontSize: 14),
                textAlign: pw.TextAlign.center,
              ),
            ),
            pw.Spacer(flex: 3),
          ],
        ),
      );
    }

    final aspectRatio = format.availableWidth / format.availableHeight;

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        margin: pw.EdgeInsets.zero,
        build: (_) {
          return pw.GridView(
            crossAxisCount: 2,
            childAspectRatio: aspectRatio * 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            children: List.generate(4, (_) => buildCard()),
          );
        },
      ),
    );

    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
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
}

import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:project_portfolio/views/business_logic/utils/cv.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';

class CVPDFScreen extends StatelessWidget {
  static const String id = '/cv';

  @override
  Widget build(BuildContext context) {
    generateCV(jobList: []);

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: CustomTitle(
            leading: Icon(Icons.description),
            title: 'CV',
          )),
      body: PdfPreview(
        scrollViewDecoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        pdfPreviewPageDecoration: customBoxDecoration(context).copyWith(borderRadius: BorderRadius.zero),
        allowSharing: false,
        allowPrinting: false,
        canChangePageFormat: false,
        maxPageWidth: 700,
        build: _generateCV,
        initialPageFormat: PdfPageFormat.a4,
        onError: (context) => Center(child: Text('Generating PDF failed, please try again.')),
      ),
    );
  }

  FutureOr<Uint8List> _generateCV(PdfPageFormat _pdfPageFormat) => generateCV(jobList: []);
}

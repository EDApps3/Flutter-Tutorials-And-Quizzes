import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

void main() => runApp(AdvancePdfViewerAsset());

class AdvancePdfViewerAsset extends StatefulWidget {
  @override
  _AdvancePdfViewerAssetState createState() => _AdvancePdfViewerAssetState();
}

class _AdvancePdfViewerAssetState extends State<AdvancePdfViewerAsset> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/PdfTest.pdf');
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Advance Pdf Viewer Asset'),
        ),
        body: Center(
          child: _isLoading ?
                   Center(child: CircularProgressIndicator())
                  :PDFViewer(document: document,),
        ),
      ),
    );
  }
}
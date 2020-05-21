import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

void main() => runApp(AdvancePdfViewerUrl());

class AdvancePdfViewerUrl extends StatefulWidget {
  @override
  _AdvancePdfViewerUrlState createState() => _AdvancePdfViewerUrlState();
}

class _AdvancePdfViewerUrlState extends State<AdvancePdfViewerUrl> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL('https://pokemonsadventure.000webhostapp.com/PdfTest.pdf');
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Advance Pdf Viewer Url'),
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
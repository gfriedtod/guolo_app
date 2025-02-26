import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocumentViewPage extends StatelessWidget {
  final String link;
  const DocumentViewPage({super.key, required this.link});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SfPdfViewer.network(

          link),
      ));
      // body:  FutureBuilder(
      //     future: PDFDocument.fromURL(link),
      //     builder: (context,snapshot) {
      //       if (snapshot.connectionState == ConnectionState.waiting) {
      //         return const Center(child: CircularProgressIndicator(
      //           color: Colors.black,
      //           strokeWidth: 8,
      //         ));
      //
      //       }
      //       if (snapshot.data != null) {
      //         return PDFViewer( document: snapshot.data!,);
      //       }
      //       return Container();
      //     }
      // ),);
  }
}

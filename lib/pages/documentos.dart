import 'package:flutter/material.dart';
class PageDocumentos extends StatefulWidget {
  @override
  _PageDocumentosState createState() => _PageDocumentosState();
}

class _PageDocumentosState extends State<PageDocumentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documentos'),
      ),
      body: Center(
        child: Text('Page Documentos'),
      ),
    );
  }
}

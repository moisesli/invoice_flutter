import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';
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
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Page Documentos'),
      ),
    );
  }
}

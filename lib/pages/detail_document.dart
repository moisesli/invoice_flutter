import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class DetailDocument extends StatefulWidget {
  @override
  _DetailDocumentState createState() => _DetailDocumentState();
}

class _DetailDocumentState extends State<DetailDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () { Navigator.pop(context); },

            );
          },
        ),
        title: Text('Factura F001-23456'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Detalle de factura'),
      ),
    );
  }
}

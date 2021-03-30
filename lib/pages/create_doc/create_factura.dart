import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateFactura extends StatefulWidget {
  @override
  _CreateFacturaState createState() => _CreateFacturaState();
}

class _CreateFacturaState extends State<CreateFactura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: Text('Create Factura'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Crear Factura'),
      ),
    );
  }
}

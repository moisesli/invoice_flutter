import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateNotaCredito extends StatefulWidget {
  @override
  _CreateNotaCreditoState createState() => _CreateNotaCreditoState();
}

class _CreateNotaCreditoState extends State<CreateNotaCredito> {
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
        title: Text('Create Nota Credito'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Create Nota Credito'),
      ),
    );
  }
}

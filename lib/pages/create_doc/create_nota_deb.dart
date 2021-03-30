import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateNotaDebito extends StatefulWidget {
  @override
  _CreateNotaDebitoState createState() => _CreateNotaDebitoState();
}

class _CreateNotaDebitoState extends State<CreateNotaDebito> {
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
        title: Text('Create Nota Debito'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Create Nota Debito'),
      ),
    );
  }
}

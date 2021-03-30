import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateBoleta extends StatefulWidget {
  @override
  _CreateBoletaState createState() => _CreateBoletaState();
}

class _CreateBoletaState extends State<CreateBoleta> {
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
        title: Text('Create Boleta'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Create Boleta'),
      ),
    );
  }
}

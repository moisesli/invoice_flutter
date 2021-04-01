import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice/widgets/drawer.dart';

var data;

Future loadJson() async {
  String data = await rootBundle.loadString('assets/json/productos.json');
  return json.decode(data);
}


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

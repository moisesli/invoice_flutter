import 'dart:convert';
import 'package:flutter/cupertino.dart';
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
  void initState() {
    loadJson().then((value) {
      setState(() {
        data = value;
      });
    });
    super.initState();
  }

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
      body: FutureBuilder(
        future: loadJson(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('P'),
                    ),
                    title: Wrap(
                      children: [
                        Text(snapshot.data[index]['nombre'])
                      ],
                    ),
                    subtitle: Text(snapshot.data[index]['unidad']),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

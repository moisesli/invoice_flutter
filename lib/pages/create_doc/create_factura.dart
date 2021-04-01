import 'dart:html';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Numero y Serie'),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Razon Social'),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Documento'),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Fecha'),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      title: Row(
                        children: [Text('Arroz Costenio Graneadito 600 Gg')],
                      ),
                      subtitle: Text('S/ 45.56 X 200 und'),
                      trailing: Icon(Icons.delete),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      title: Row(
                        children: [Text('Arroz Costenio Graneadito 600 Gg')],
                      ),
                      subtitle: Text('S/ 45.56 X 200 und'),
                      trailing: Icon(Icons.delete),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      title: Row(
                        children: [Text('Arroz Costenio Graneadito 600 Gg')],
                      ),
                      subtitle: Text('S/ 45.56 X 200 und'),
                      trailing: Icon(Icons.delete),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          'P',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      title: Row(
                        children: [Text('Arroz Costenio Graneadito 600 Gg')],
                      ),
                      subtitle: Text('S/ 45.56 X 200 und'),
                      trailing: Icon(Icons.delete),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice/widgets/drawer.dart';

var data;

Future loadJson() async {
  String data = await rootBundle.loadString('assets/json/documentos.json');
  return json.decode(data);
}

class PageDocumentos extends StatefulWidget {
  @override
  _PageDocumentosState createState() => _PageDocumentosState();
}

class _PageDocumentosState extends State<PageDocumentos> {
  @override
  void initState() {
    loadJson().then((value) {
      setState(() {
        data = value;
        print(data[0]['serie']);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Facturas Electronicas'),
        ),
        drawer: WidgetDrawer(),
        body: FutureBuilder(
          future: loadJson(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              print(snapshot.data[0]);
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          snapshot.data[index]['serie'][0],
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      title: Text(snapshot.data[index]['serie'] +
                          '-' +
                          snapshot.data[index]['numero'] +
                          ' | ' +
                          snapshot.data[index]['fecha']
                      ),
                      subtitle: Text(snapshot.data[index]['razon']),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}

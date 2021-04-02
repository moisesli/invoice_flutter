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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => showSearch(context: context, delegate: DataSearch()),
          )
        ],
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
                    subtitle: Wrap(
                      children: [
                        Text(snapshot.data[index]['cantidad']),
                        Text(snapshot.data[index]['unidad']),
                        Text(' IGV '),
                        Text(snapshot.data[index]['igv']),
                      ],
                    ),
                    trailing: Text(
                        'S/ ' + snapshot.data[index]['precio'],
                      style: TextStyle( fontSize: 18),
                    ),
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

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
  
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var data;

Future loadJson() async {
  String data = await rootBundle.loadString('assets/json/productos.json');
  return json.decode(data);
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Column(
      children: [Text('data')],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    var temporal = new List();
    var temp = new List();
    for (int i = 0; i < data.length; i++) {
      temporal.add(data[i]);
    }
    temp = temporal
        .where((note) => note['nombre'].toLowerCase().contains(query))
        .toList();
    print(temp);
    return ListView.builder(
      itemCount: temp.length,
      itemBuilder: (context, int index) {
        return Card(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(temp[index]['image']),
              ),
              title: Text(temp[index]['nombre']),
              subtitle: Text('cantidad ' + temp[index]['cantidad']),
              trailing: Text(temp[index]['precio']),
              onTap: () {
              },
            )
          ],
        ));
      },
    );
  }
}

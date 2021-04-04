import 'package:flutter/material.dart';
import 'package:invoice/widgets/data_search.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateNotaCredito extends StatefulWidget {
  @override
  _CreateNotaCreditoState createState() => _CreateNotaCreditoState();
}

class _CreateNotaCreditoState extends State<CreateNotaCredito> {
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
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Total S/ 405.67  Nota Credito Electronica',
              style: TextStyle(fontSize: 18)),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.list_alt_outlined),
                text: 'Productos',
              ),
              Tab(icon: Icon(Icons.supervised_user_circle), text: 'Cliente'),
              Tab(
                icon: Icon(Icons.insert_drive_file),
                text: 'Documento',
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () =>
                  showSearch(context: context, delegate: DataSearch()),
            )
          ],
        ),
        drawer: WidgetDrawer(),
        body: TabBarView(
          children: [
            Container(
              child: ListView(
                children: [
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset('img/aceite_primor.jpg'),
                          ),
                          title: Text('Aceite Primor Vegetal Limpio'),
                          subtitle: Wrap(
                            children: [
                              Text('Cantidad 1 Kg '),
                            ],
                          ),
                          trailing: Text(
                            'S/ 1 534.68',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black87),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset('img/costeno1.jpg'),
                          ),
                          title: Text('Arroz Costeno Graneadito Casero'),
                          subtitle: Wrap(
                            children: [
                              Text('Cantidad 5 UND '),
                            ],
                          ),
                          trailing: Text(
                            'S/ 34 124.43',
                            style:
                            TextStyle(fontSize: 17, color: Colors.black87),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

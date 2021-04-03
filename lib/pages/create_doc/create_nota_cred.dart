import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateNotaCredito extends StatefulWidget {
  @override
  _CreateNotaCreditoState createState() => _CreateNotaCreditoState();
}

class _CreateNotaCreditoState extends State<CreateNotaCredito> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create Nota Credito'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list_alt_outlined), text: 'Productos',),
              Tab(icon: Icon(Icons.supervised_user_circle), text: 'Cliente'),
              Tab(icon: Icon(Icons.insert_drive_file), text: 'Documento',)
            ],
          ),
        ),
        drawer: WidgetDrawer(),
        body: Center(
          child: Text('Create Nota Credito'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';
class PageClientes extends StatefulWidget {
  @override
  _PageClientesState createState() => _PageClientesState();
}

class _PageClientesState extends State<PageClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Page Clientes'),
      ),
    );
  }
}
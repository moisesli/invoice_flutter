import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class PageProductos extends StatefulWidget {
  @override
  _PageProductosState createState() => _PageProductosState();
}

class _PageProductosState extends State<PageProductos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Pagina Productos'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Pagina Productos'),
      ),
    );
  }
}

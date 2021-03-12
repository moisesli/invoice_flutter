import 'package:flutter/material.dart';
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
      body: Center(
        child: Text('Page Clientes'),
      ),
    );
  }
}

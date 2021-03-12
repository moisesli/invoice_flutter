import 'package:flutter/material.dart';
import 'package:invoice/widgets/drawer.dart';

class PageEmpresas extends StatefulWidget {
  @override
  _PageEmpresasState createState() => _PageEmpresasState();
}

class _PageEmpresasState extends State<PageEmpresas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresas'),
      ),
      drawer: WidgetDrawer(),
      body: Center(
        child: Text('Page Empresas'),
      ),
    );
  }
}


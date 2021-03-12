import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Page Empresas'),
      ),
    );
  }
}


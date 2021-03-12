import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:invoice/pages/clientes.dart';
import 'package:invoice/pages/documentos.dart';
import 'package:invoice/pages/empresas.dart';
import 'package:invoice/pages/productos.dart';
import 'package:invoice/widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/documentos',
      routes: {
        '/documentos': (context) => PageDocumentos(),
        '/productos': (context) => PageProductos(),
        '/empresas': (context) => PageEmpresas(),
        '/clientes': (context) => PageClientes(),
      },
    );
  }
}
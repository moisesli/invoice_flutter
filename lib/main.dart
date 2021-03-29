import 'package:flutter/material.dart';
import 'package:invoice/pages/clientes.dart';
import 'package:invoice/pages/detail_document.dart';
import 'package:invoice/pages/documentos.dart';
import 'package:invoice/pages/empresas.dart';
import 'package:invoice/pages/productos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/documentos',
      routes: {
        '/documentos': (context) => PageDocumentos(),
        '/detail_document': (context) => DetailDocument(),
        '/productos': (context) => PageProductos(),
        '/empresas': (context) => PageEmpresas(),
        '/clientes': (context) => PageClientes(),
      },
    );
  }
}
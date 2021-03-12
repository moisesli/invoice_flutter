import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:invoice/pages/productos.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/productos': (context) => PageProductos()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer Demo"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                children: [
                  CircleAvatar(radius: 40, backgroundColor: Colors.redAccent),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      "Android Coding",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            MenuItem(
              titulo: 'Documentos',
              icono: Icons.home,
              url: '/documentos',
            ),
            MenuItem(
                titulo: 'Productos', icono: Icons.settings, url: '/productos'),
            MenuItem(
              titulo: 'Empresas',
              icono: Icons.article,
              url: '/empresas',
            ),
            MenuItem(
              titulo: 'Clientes',
              icono: Icons.assessment_rounded,
              url: '/clientes',
            )
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String titulo;
  final String url;
  final IconData icono;

  const MenuItem({
    Key key,
    this.titulo,
    this.icono,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(this.icono),
      title: Text(this.titulo, style: TextStyle(fontSize: 16)),
      onTap: () => Navigator.pushNamed(context, '/productos'),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Column(
              children: [
                CircleAvatar(radius: 40, backgroundColor: Colors.pink),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    "Factura Electronica",
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
      onTap: () => Navigator.pushNamed(context, this.url),
    );
  }
}
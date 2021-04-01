import 'package:flutter/material.dart';

class WidgetDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 160,
            child: DrawerHeader(
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
          ),
          ExpansionTile(
            initiallyExpanded: true,
            leading: Icon(Icons.file_copy),
            title: Text('Documentos'),
            children: [
              ListTile(
                leading: Icon(Icons.arrow_right_outlined),
                title: Text('Lista de Documentos'),
                onTap: () {
                  Navigator.pushNamed(context, '/documentos');
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text('Nueva Factura'),
                subtitle: Text('Electronica'),
                onTap: () {
                  Navigator.pushNamed(context, '/create_factura');
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text('Nueva Boleta'),
                subtitle: Text('Electronica'),
                onTap: () {
                  Navigator.pushNamed(context, '/create_boleta');
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text('Nueva Nota de Credito'),
                subtitle: Text('Electronica'),
                onTap: () {
                  Navigator.pushNamed(context, '/create_nota_credito');
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text('Nueva Nota Debito'),
                subtitle: Text('Electronica'),
                onTap: () {
                  Navigator.pushNamed(context, '/create_nota_debito');
                },
              )
            ],
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

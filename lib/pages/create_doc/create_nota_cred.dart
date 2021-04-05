import 'package:flutter/material.dart';
import 'package:invoice/widgets/data_search.dart';
import 'package:invoice/widgets/drawer.dart';

class CreateNotaCredito extends StatefulWidget {
  @override
  _CreateNotaCreditoState createState() => _CreateNotaCreditoState();
}

class _CreateNotaCreditoState extends State<CreateNotaCredito> {
  @override
  void initState() {
    loadJson().then((value) {
      setState(() {
        data = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Total S/ 405.67  Nota Credito Electronica',
              style: TextStyle(fontSize: 18)),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.list_alt_outlined),
                text: 'Productos',
              ),
              Tab(icon: Icon(Icons.supervised_user_circle), text: 'Cliente'),
              Tab(
                icon: Icon(Icons.insert_drive_file),
                text: 'Documento',
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () =>
                  showSearch(context: context, delegate: DataSearch()),
            )
          ],
        ),
        drawer: WidgetDrawer(),
        body: TabBarView(
          children: [
            Container(
              child: ListView(
                children: [
                  CardProduct(
                    image: 'img/aceite_primor.jpg',
                    title: 'Aceite Primor Grande Vegetal',
                    subtitle: 'Cantidad 5000 ml',
                    price: 'S/ 7.50',
                  ),
                  CardProduct(
                    image: 'img/azucar.jpg',
                    title: 'Azucar Rubia Granizada',
                    subtitle: 'Cantidad 5 Kg',
                    price: 'S/ 18.00',
                  ),
                  CardProduct(
                    image: 'img/cafe.jpg',
                    title: 'Cafe Kirma Negro Grano Entero',
                    subtitle: 'Cantidad 500 gr',
                    price: 'S/ 6.70',
                  ),
                  CardProduct(
                    image: 'img/costeno1.jpg',
                    title: 'Arroz Costeno Graneadito Seleccionado',
                    subtitle: 'Cantidad 5 Kg',
                    price: 'S/ 23.45',
                  ),
                  CardProduct(
                    image: 'img/mayonesa.jpg',
                    title: 'Mayonesa Helman Sabor de Casa',
                    subtitle: 'Peso 400 gr',
                    price: 'S/ 8.00',
                  ),
                  CardProduct(
                    image: 'img/pollo.jpg',
                    title: 'Pechuga de Pollo Fileteada',
                    subtitle: 'Cantidad 3 Kg',
                    price: 'S/ 35.00',
                  ),
                  CardProduct(
                    image: 'img/sal.jpg',
                    title: 'Sal Yodada fuerte',
                    subtitle: 'Cantidad 1 Kg',
                    price: 'S/ 3.50',
                  ),
                  CardProduct(
                    image: 'img/aceite_primor.jpg',
                    title: 'Aceite Primor Grande Vegetal',
                    subtitle: 'Cantidad 5000 ml',
                    price: 'S/ 7.50',
                  ),
                  CardProduct(
                    image: 'img/azucar.jpg',
                    title: 'Azucar Rubia Granizada ',
                    subtitle: 'Cantidad 5 Kg',
                    price: 'S/ 18.00',
                  ),
                  CardProduct(
                    image: 'img/cafe.jpg',
                    title: 'Cafe Kirma Negro Grano Entero',
                    subtitle: 'Cantidad 500 gr',
                    price: 'S/ 6.70',
                  ),
                  CardProduct(
                    image: 'img/costeno1.jpg',
                    title: 'Arroz Costeno Graneadito Seleccionado',
                    subtitle: 'Cantidad 5 Kg',
                    price: 'S/ 23.45',
                  ),
                  CardProduct(
                    image: 'img/mayonesa.jpg',
                    title: 'Mayonesa Helman Sabor de Casa',
                    subtitle: 'Peso 400 gr',
                    price: 'S/ 8.00',
                  ),
                  CardProduct(
                    image: 'img/pollo.jpg',
                    title: 'Pechuga de Pollo Fileteada',
                    subtitle: 'Cantidad 3 Kg',
                    price: 'S/ 35.00',
                  ),
                  CardProduct(
                    image: 'img/sal.jpg',
                    title: 'Sal Yodada fuerte',
                    subtitle: 'Cantidad 1 Kg',
                    price: 'S/ 3.50',
                  ),
                  CardProduct(
                    image: 'img/aceite_primor.jpg',
                    title: 'Aceite Primor Grande Vegetal',
                    subtitle: 'Cantidad 5000 ml',
                    price: 'S/ 7.50',
                  ),
                  CardProduct(
                    image: 'img/azucar.jpg',
                    title: 'Azucar Rubia Granizada ',
                    subtitle: 'Cantidad 5 Kg',
                    price: 'S/ 18.00',
                  ),
                  CardProduct(
                    image: 'img/cafe.jpg',
                    title: 'Cafe Kirma Negro Grano Entero',
                    subtitle: 'Cantidad 500 gr',
                    price: 'S/ 6.70',
                  ),
                  CardProduct(
                    image: 'img/costeno1.jpg',
                    title: 'Arroz Costeno Graneadito Seleccionado',
                    subtitle: 'Cantidad 5 Kg',
                    price: 'S/ 23.45',
                  ),
                  CardProduct(
                    image: 'img/mayonesa.jpg',
                    title: 'Mayonesa Helman Sabor de Casa',
                    subtitle: 'Peso 400 gr',
                    price: 'S/ 8.00',
                  ),
                  CardProduct(
                    image: 'img/pollo.jpg',
                    title: 'Pechuga de Pollo Fileteada',
                    subtitle: 'Cantidad 3 Kg',
                    price: 'S/ 35.00',
                  ),
                  CardProduct(
                    image: 'img/sal.jpg',
                    title: 'Sal Yodada fuerte',
                    subtitle: 'Cantidad 1 Kg',
                    price: 'S/ 3.50',
                  ),
                ],
              ),
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  const CardProduct(
      {Key key, this.image, this.title, this.subtitle, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(this.image),
            ),
            title: Text(this.title),
            subtitle: Wrap(
              children: [
                Text(this.subtitle),
              ],
            ),
            trailing: Text(
              this.price,
              style: TextStyle(fontSize: 17, color: Colors.black87),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

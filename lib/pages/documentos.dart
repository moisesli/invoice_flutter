import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice/widgets/drawer.dart';

var data;

Future loadJson() async {
  String data = await rootBundle.loadString('assets/json/documentos.json');
  return json.decode(data);
}

class PageDocumentos extends StatefulWidget {
  @override
  _PageDocumentosState createState() => _PageDocumentosState();
}

class _PageDocumentosState extends State<PageDocumentos>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animationIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // Nota Debito
  Widget buttonNotaDebito() {
    return Container(
      child: FloatingActionButton(
          heroTag: null,
          onPressed: () {
            Navigator.pushNamed(context, '/create_nota_debito');
          },
          tooltip: "Add",
          child: CircleAvatar(
            child: Text('D'),
          )),
    );
  }

  // Nota Credito
  Widget buttonNotaCredito() {
    return Container(
      child: FloatingActionButton(
          heroTag: null,
          onPressed: () {
            Navigator.pushNamed(context, '/create_nota_credito');
          },
          tooltip: "Add",
          child: CircleAvatar(
            child: Text('N'),
          )),
    );
  }

  // Boleta
  Widget buttonBoleta() {
    return Container(
      child: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          Navigator.pushNamed(context, '/create_boleta');
        },
        tooltip: "Edit",
        child: CircleAvatar(
          child: Text('B'),
        ),
      ),
    );
  }

  // Factura
  Widget buttonFactura() {
    return Container(
      child: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          Navigator.pushNamed(context, '/create_factura');
        },
        tooltip: "Delete",
        child: CircleAvatar(
          child: Text('F'),
        ),
      ),
    );
  }

  Widget buttonToogle() {
    return Container(
      child: FloatingActionButton(
        heroTag: null,
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: "Toogle",
        child: AnimatedIcon(
            icon: AnimatedIcons.add_event, progress: _animationIcon),
      ),
    );
  }

  animate() {
    if (!isOpened)
      _animationController.forward();
    else
      _animationController.reverse();
    isOpened = !isOpened;
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            setState(() {});
          });

    _animationIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _buttonColor = ColorTween(begin: Colors.blue, end: Colors.red).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(0.00, 1.00, curve: Curves.linear)));

    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(0.0, 0.75, curve: _curve)));

    loadJson().then((value) {
      setState(() {
        data = value;
        print(data[0]['serie']);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Facturas Electronicas'),
        ),
        drawer: WidgetDrawer(),
        body: FutureBuilder(
          future: loadJson(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              print(snapshot.data[0]);
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          snapshot.data[index]['serie'][0],
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(snapshot.data[index]['serie'] +
                              '-' +
                              snapshot.data[index]['numero']),
                          Text(
                            ' S/ ' + snapshot.data[index]['price'],
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )
                        ],
                      ),
                      subtitle: Wrap(
                        children: [
                          Text(snapshot.data[index]['razon']),
                          Text(
                            'No enviado | ' + snapshot.data[index]['fecha'],
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_document');
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Transform(
                transform: Matrix4.translationValues(
                    0.0, _translateButton.value * 4.0, 0.0),
                child: buttonNotaDebito()),
            Transform(
                transform: Matrix4.translationValues(
                    0.0, _translateButton.value * 3.0, 0.0),
                child: buttonNotaCredito()),
            Transform(
                transform: Matrix4.translationValues(
                    0.0, _translateButton.value * 2.0, 0.0),
                child: buttonBoleta()),
            Transform(
                transform:
                    Matrix4.translationValues(0.0, _translateButton.value, 0.0),
                child: buttonFactura()),
            buttonToogle()
          ],
        ));
  }
}

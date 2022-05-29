import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();

class Registro extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("TODO"),

            RaisedButton(
              onPressed: () {
                Navigator.pop(context); //Regresar a pantalla principal
              },
              child: Text('Volver a página principal'),
            ),
          ]
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'WidgetInicio.dart';
import 'WidgetPaginaPrincipal.dart';

GlobalKey formkey = GlobalKey<FormState>();

class Compra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compra"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 2.5, bottom: 2.5, right: 10, left: 10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.orange,
                  width: 1.5,
                  ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: <Widget>[
                  Text("¡El producto se ha comprado con éxito!"),
                  RaisedButton(
                    onPressed: () {
                      //Inicio();
                    },
                    child: Text('Volver a página principal'),
                  ),
                  /*
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        // Add TextFormFields and ElevatedButton here.
                      ],
                    ),
                  ),*/
                ]
              )
            )
          ] 
        ),
      ),
    );
  }
}

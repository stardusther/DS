import 'package:practica2/Vista.dart';

import 'Producto.dart';
import 'TipoProducto.dart';
import 'EstadoProducto.dart';
import 'Cliente.dart';
import 'Objetivo.dart';
import 'CadenaFiltros.dart';
import 'Filtro.dart';
import 'GestorFiltros.dart';
import 'FiltroPrecio.dart';
import 'FiltroDistancia.dart';
import 'FiltroEstadoProducto.dart';
import 'FiltroTipoProducto.dart';
import 'Controlador.dart';

import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compra"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text("Introduce tus datos de usuario"), // a lo mejor no es necesario
          RaisedButton(
            onPressed: () {
              Navigator.pop(context); //Regresar a pantalla principal
            },
            child: Text('Volver a página principal'),
          ),
        ]),
      ),
    );
  }
}

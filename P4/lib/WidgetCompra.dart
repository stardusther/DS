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

class Compra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compra"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Text("¡El producto se ha comprado con éxito!"),
          RaisedButton(
            onPressed: () {
                home: MyHomePage("Filtros de Productos Artísticos", _vista!, _controlador!),
            },
            child: Text('Volver a página principal'),
          ),
        ]),
      ),
    );
  }
}

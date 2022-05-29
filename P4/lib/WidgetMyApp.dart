import 'package:practica2/VistaModelo.dart';
import 'package:practica2/WidgetInicio.dart';

import 'Controlador.dart';
import 'WidgetCompra.dart';
import 'WidgetPaginaPrincipal.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Vista? _vista = null; //Inicialmente a null
  Controlador? _controlador = null;

  MyApp(Vista vista, Controlador controlador, {Key? key})
    : //Constructor - key se puede enviiar o no
      _vista = vista,
      _controlador = controlador,
      super(key: key);

  // Root de la aplicacion
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compra-Venta de Arte',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Inicio(_vista!, _controlador!),
      //home: MyHomePage("Filtros de Productos Artísticos", _vista!, _controlador!), //! para no null
    );
  }
} //Fin de la clase MyApp
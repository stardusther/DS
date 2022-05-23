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
import 'WidgetMyHomePage.dart';
import 'WidgetInicio.dart';

import 'package:flutter/material.dart';

void main() {
  // Crear gestor de filtros y Objetivo
  Objetivo objetivo = new Objetivo();
  GestorFiltros gestorFiltros = new GestorFiltros(objetivo);

  // Añadir los filtros (orden: precio, distancia, estado y tipo)
  gestorFiltros.setFiltro = new FiltroPrecio();
  gestorFiltros.setFiltro = new FiltroDistancia();
  gestorFiltros.setFiltro = new FiltroEstadoProducto();
  gestorFiltros.setFiltro =
      new FiltroTipoProducto(); // No sé por qué se pone un =, dart es un misterio

  // Crear Cliente
  Cliente cliente = new Cliente();

  // Añadirle al cliente el gestor de filtros
  cliente.setGestorFiltros = gestorFiltros;

  // Creacion de un catalogo de productos
  Producto producto1 = new Producto(10, 10, "Cuadro Mona Lisa", "Un cuadro sin más de mi abuela", TipoProducto.cuadro, EstadoProducto.nuevo);
  Producto producto2 = new Producto(200, 2, "Lapiz 2B", "Un lápiz bonito", TipoProducto.lapices, EstadoProducto.bueno);
  Producto producto3 = new Producto(500, 300, "Escultura David", "Escultura bien fachera", TipoProducto.escultura, EstadoProducto.bueno);
  Producto producto4 = new Producto(100, 55, "Caballete marrón", "Caballete casi sin usar", TipoProducto.caballete, EstadoProducto.excelente);
  Producto producto5 = new Producto(3, 80, "Cuadro casero", "Le he dedicado muchas horas merece la pena", TipoProducto.cuadro, EstadoProducto.nuevo);
  Producto producto6 = new Producto(12, 3, "Pincelito", "Pincelito para pintar", TipoProducto.pincel, EstadoProducto.bueno);
  Producto producto7 = new Producto(16.55, 1, "Acuarela", "Acuarela dije", TipoProducto.pinturas, EstadoProducto.roto);
  Producto producto8 = new Producto(5, 2, "Lienzo", "Aqui dibujaba Piccaso", TipoProducto.lienzo, EstadoProducto.roto);
  Producto producto9 = new Producto(1, 1, "Lapiz roto robado", "Lapiz de mi colega de clase", TipoProducto.lapices, EstadoProducto.roto);
  Producto producto10 = new Producto(300, 3, "Pincel de acuarela", "Me vinieron dos pero solo quería uno, esta sin usar", TipoProducto.pincel, EstadoProducto.excelente);
  Producto producto11 = new Producto(200, 7, "Escultura de Hasbulla", "Escultura de Hasbulla 2", TipoProducto.escultura, EstadoProducto.bueno);
  Producto producto12 = new Producto(350,5,"Cuadro Picassito","Cuadro de Picasso de su etapa en París",TipoProducto.lapices,EstadoProducto.excelente);
  Producto producto13 = new Producto(20,15,"Pinturas acrílicas","Perfectas para tus cuadros", TipoProducto.pinturas, EstadoProducto.nuevo);
  Producto producto14 = new Producto(1, 500, "Pintura industrial","Perfectas para tu empresa", TipoProducto.pinturas, EstadoProducto.nuevo);
  Producto producto15 = new Producto(235,55.3,"Escultura de Dios","No se de donde saque esto",TipoProducto.escultura,EstadoProducto.excelente);
  Producto producto16 = new Producto(5, 7,"Caballete (o eso creo)", "No sé que es, pero lo vendo", TipoProducto.caballete, EstadoProducto.roto);

  // Crear catalogo - coleccion de productos
  List<Producto> catalogo = [];

  catalogo.add(producto1);
  catalogo.add(producto2);
  catalogo.add(producto3);
  catalogo.add(producto4);
  catalogo.add(producto5);
  catalogo.add(producto6);
  catalogo.add(producto7);
  catalogo.add(producto8);
  catalogo.add(producto9);
  catalogo.add(producto10);
  catalogo.add(producto11);
  catalogo.add(producto12);
  catalogo.add(producto13);
  catalogo.add(producto14);
  catalogo.add(producto15);
  catalogo.add(producto16);

  // Crear controlador y vista. Sobre el controlador haremos peticiones y sobre la vista veremos los resultados
  Controlador controlador = new Controlador(cliente, catalogo);
  Vista vista = new Vista(objetivo, catalogo);

  //Creamos filtros
  List<int> listaFiltro1 = [];
  List<int> listaFiltro2 = [];
  List<int> listaFiltro3 = [];
  List<int> listaFiltro4 = [];

  /*
  //Modificamos los valores para los filtros que le pasaremos al controlador
  lista_filtro1.add(-1);
  controlador.modificarFiltro(0,lista_filtro1);

  lista_filtro2.add(-1);
  controlador.modificarFiltro(1,lista_filtro2);

  lista_filtro3.add(-1);
  controlador.modificarFiltro(2,lista_filtro3);

  lista_filtro4.add(6); //-1 es "no hacer nada" - Por defecto ya esta así el controlador
  controlador.modificarFiltro(3,lista_filtro4);
  */

  // Ejecutamos con los filtros que le hemos pasado
  controlador.aplicarFiltros(catalogo);

  //Obtener los productos resultantes a través de la vista
  List<Producto> catFinal = vista.getProductosFiltrados();

  //////////////////////////////////////////////////////////////////////
  //Parte de flutter
  //Añadir parte correspondiente a crear Pantalla en flutter
  runApp(MyApp(vista, controlador));
}

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
      home: Inicio(),
      //MyHomePage("Filtros de Productos Artísticos", _vista!, _controlador!), //! para no null
    );
  }
} //Fin de la clase MyApp
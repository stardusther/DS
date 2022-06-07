import 'package:flutter_test/flutter_test.dart';
//import 'package:test/test.dart';
import 'package:practica2/VistaModelo.dart';
import 'package:flutter/material.dart';
import 'package:practica2/Cliente.dart';
import 'package:practica2/Controlador.dart';
import 'package:practica2/EstadoProducto.dart';
import 'package:practica2/FiltroDistancia.dart';
import 'package:practica2/FiltroEstadoProducto.dart';
import 'package:practica2/FiltroPrecio.dart';
import 'package:practica2/FiltroTipoProducto.dart';
import 'package:practica2/GestorFiltros.dart';
import 'package:practica2/Objetivo.dart';
import 'package:practica2/Producto.dart';
import 'package:practica2/TipoProducto.dart';
import 'package:practica2/main.dart';
import 'package:flutter/material.dart';

void main()
{
  // Crear gestor de filtros y Objetivo
  Objetivo objetivo = new Objetivo();
  GestorFiltros gestorFiltros = new GestorFiltros(objetivo);

  // Añadir los filtros (orden: precio, distancia, estado y tipo)
  gestorFiltros.setFiltro = new FiltroPrecio();
  gestorFiltros.setFiltro = new FiltroDistancia();
  gestorFiltros.setFiltro = new FiltroEstadoProducto();
  gestorFiltros.setFiltro = new FiltroTipoProducto(); // No sé por qué se pone un =, dart es un misterio

  // Crear Cliente
  Cliente cliente = new Cliente();

  // Añadirle al cliente el gestor de filtros
  cliente.setGestorFiltros = gestorFiltros;

  // Creacion de un catalogo de productos
Producto producto1 = new Producto(10, 10, "Cuadro Mona Lisa", "Un cuadro sin más de mi abuela", TipoProducto.cuadro, EstadoProducto.nuevo, 0);
  Producto producto2 = new Producto(200, 2, "Lapiz 2B", "Un lápiz bonito", TipoProducto.lapices, EstadoProducto.bueno, 1);
  Producto producto3 = new Producto(500, 300, "Escultura David", "Escultura bien fachera", TipoProducto.escultura, EstadoProducto.bueno, 2);
  Producto producto4 = new Producto(100, 55, "Caballete marrón", "Caballete casi sin usar", TipoProducto.caballete, EstadoProducto.excelente, 3);
  Producto producto5 = new Producto(3, 80, "Cuadro casero", "Le he dedicado muchas horas merece la pena", TipoProducto.cuadro, EstadoProducto.nuevo, 4);
  Producto producto6 = new Producto(12, 3,  "Pincelito", "Pincelito para pintar", TipoProducto.pincel, EstadoProducto.bueno, 5);
  Producto producto7 = new Producto(16.55, 1, "Acuarela", "Acuarela dije", TipoProducto.pinturas, EstadoProducto.roto, 6);
  Producto producto8 = new Producto(5, 2, "Lienzo", "Aqui dibujaba Piccaso", TipoProducto.lienzo, EstadoProducto.roto, 7);
  Producto producto9 = new Producto(1, 1, "Lapiz roto robado", "Lapiz de mi colega de clase", TipoProducto.lapices, EstadoProducto.roto, 8);
  Producto producto10 = new Producto(300, 3, "Pincel de acuarela", "Me vinieron dos pero solo quería uno, esta sin usar", TipoProducto.pincel, EstadoProducto.excelente, 9);
  Producto producto11 = new Producto(200, 7, "Escultura de Hasbulla", "Escultura de Hasbulla 2", TipoProducto.escultura, EstadoProducto.bueno, 10);
  Producto producto12 = new Producto(350, 5, "Cuadro Picassito", "Cuadro de Picasso de su etapa en París", TipoProducto.lapices, EstadoProducto.excelente, 11);
  Producto producto13 = new Producto(20, 15, "Pinturas acrílicas", "Perfectas para tus cuadros", TipoProducto.pinturas, EstadoProducto.nuevo, 12);
  Producto producto14 = new Producto(1, 500, "Pintura industrial", "Perfectas para tu empresa", TipoProducto.pinturas, EstadoProducto.nuevo, 13); 
  Producto producto15 = new Producto(235, 55.3, "Escultura de Dios", "No se de donde saque esto", TipoProducto.escultura, EstadoProducto.excelente, 14);
  Producto producto16 = new Producto(5, 7, "Caballete (o eso creo)", "No sé que es, pero lo vendo", TipoProducto.caballete, EstadoProducto.roto, 15);

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
  VistaModelo vista = new VistaModelo(objetivo, catalogo);

  //Creamos filtros
  List<int> listaFiltro1 = [];
  List<int> listaFiltro2 = [];
  List<int> listaFiltro3 = [];
  List<int> listaFiltro4 = [];

  /*
  //Modificamos los valores para los filtros que le pasaremos al controlador
  listaFiltro1.add(-1);
  controlador.modificarFiltro(0,listaFiltro1);

  listaFiltro2.add(-1);
  controlador.modificarFiltro(1,listaFiltro2);

  listaFiltro3.add(-1);
  controlador.modificarFiltro(2,listaFiltro3);

  listaFiltro4.add(6); //-1 es "no hacer nada" - Por defecto ya esta así el controlador
  controlador.modificarFiltro(3,listaFiltro4);
  */

  // Ejecutamos con los filtros que le hemos pasado
  controlador.cambiarCatalogo(catalogo);
  controlador.aplicarFiltros();

  //Obtener los productos resultantes a través de la vista 
  List<Producto> catFinal = vista.getProductosFiltrados();

  //////////////////////////////////////////////////////////////////////
  //Parte de flutter
  //Añadir parte correspondiente a crear Pantalla en flutter
  //runApp(MyApp(vista, controlador));



  group('Producto', () {
    test('Cambiar Tipo de Producto de un producto ya existente', () {
      producto1.asignarTipo(TipoProducto.lienzo);
      expect(producto1.tipo, TipoProducto.lienzo);
    });

    test('Cambiar Estado de Producto de un producto ya existente', () {
      producto2.asignarEstado(EstadoProducto.roto);
      expect(producto2.estado, EstadoProducto.roto);
    });
  });

  // getCatalogoFinal con todos los productos (Lista) --> getCatalogo
  // Aplicando manualmente algun filtro devuelve el catalogo final filtrado (Lista) --> getProductoFiltrado

  group('Vista', () {
    test('Devuelve todos los productos de la Lista', () {
      expect(vista.getCatalogo(), [producto1, producto2, producto3, producto4, producto5, producto6, producto7, producto8, producto9, producto10, producto11, producto12, producto13, producto14, producto15, producto16]);
    });

    test('Devuelve los productos filtrados en la vista luego de aplicar un filtro', (){

      listaFiltro4.add(4);
      controlador.modificarFiltro(3,listaFiltro4);
      controlador.cambiarCatalogo(catalogo);
      controlador.aplicarFiltros();

      expect(vista.getProductosFiltrados(), [producto4, producto16]);
    });

  });

  group('Cliente', () {

    test('El cliente compra un producto y se le aniade a sus pedidos', (){
      cliente.aniadirProductoPedido(producto5);

      expect(cliente.pedido, [producto5]);
    });

    test('Se mira que la instancia de gestor filtros sea la correcta en cliente', (){
      
      expect(cliente.gestor, gestorFiltros);
    });
  });
}

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

/*
import 'dart:async';
import 'dart:io';
import 'dart:convert';
*/


void main(List<String> arguments){
  // crear gestor de filtros
  GestorFiltros gestorFiltros = new GestorFiltros(new Objetivo());

  // Añadir los filtros (orden: precio, distancia, estado y tipo)
  gestorFiltros.setFiltro = new FiltroPrecio();
  gestorFiltros.setFiltro = new FiltroDistancia();
  gestorFiltros.setFiltro = new FiltroEstadoProducto();
  gestorFiltros.setFiltro = new FiltroTipoProducto(); // No sé por qué se pone un =, dart es un misterio

  // Crear Cliente
  Cliente cliente = new Cliente();

  // Set filter filterManager
  cliente.setGestorFiltros = gestorFiltros;

// Creacion de productos

  Producto producto1 = new Producto(10, 10, "Cuadro Mona Lisa", "Un cuadro sin más de mi abuela", TipoProducto.cuadro, EstadoProducto.nuevo);
  Producto producto2 = new Producto(200, 2, "Lapiz 2B", "Un lápiz bonito", TipoProducto.lapices, EstadoProducto.bueno);
  Producto producto3 = new Producto(500, 300, "Escultura David", "Escultura bien fachera", TipoProducto.escultura, EstadoProducto.bueno);
  Producto producto4 = new Producto(100, 55, "Caballete marrón", "Cabellete casi sin usar", TipoProducto.caballete, EstadoProducto.excelente);
  Producto producto5 = new Producto(3, 80, "Cuadro casero", "Le he dedicado muchas horas merece la pena", TipoProducto.cuadro, EstadoProducto.nuevo);
  Producto producto6 = new Producto(12, 3,  "Pincelito", "Pincelito para pintar", TipoProducto.pincel, EstadoProducto.bueno);
  Producto producto7 = new Producto(16.5, 1, "Acuarela", "Acuarela dije", TipoProducto.pinturas, EstadoProducto.roto);
  Producto producto8 = new Producto(5, 1.21, "Lienzo", "Aqui dibujaba Piccaso", TipoProducto.lienzo, EstadoProducto.roto);
  Producto producto9 = new Producto(1, 1, "Lapiz roto robado", "Lapiz de mi colega de clase", TipoProducto.lapices, EstadoProducto.roto);
  Producto producto10 = new Producto(300, 3, "Pincel de acuarela", "Me vinieron dos pero solo quería uno, esta sin usar", TipoProducto.pincel, EstadoProducto.excelente);
  Producto producto11 = new Producto(1200, 12.6, "Escultura de Hasbulla", "Escultura de Hasbulla 2", TipoProducto.escultura, EstadoProducto.bueno);
  Producto producto12 = new Producto(20000, 5, "Cuadro Picasso", "Cuadro de Picasso de su etapa en París", TipoProducto.lapices, EstadoProducto.excelente);
  Producto producto13 = new Producto(20, 15, "Pinturas acrílicas", "Perfectas para tus cuadros", TipoProducto.pinturas, EstadoProducto.nuevo);
  Producto producto14 = new Producto(1, 500, "Pintura industrial", "Perfectas para tu empresa", TipoProducto.pinturas, EstadoProducto.nuevo); 
  Producto producto15 = new Producto(690, 55.3, "Escultura de Dios", "No se de donde saque esto", TipoProducto.escultura, EstadoProducto.excelente);

  // añadir al catálogo
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

  //Preguntar por filtros a aplicar

  List<List<int>> matriz_filtros = [];

  List<int> lista_filtro1 = [];
  List<int> lista_filtro2 = [];
  List<int> lista_filtro3 = [];
  List<int> lista_filtro4 = [];

  //Precio -> Solo un entero
  lista_filtro1.add(100);

  //Distancia -> Solo un entero
  lista_filtro2.add(20);
  
  //EstadoProducto -> 4 enteros, uno para cada estado
  lista_filtro3.add(0);
  lista_filtro3.add(1);
  lista_filtro3.add(2);
  lista_filtro3.add(3);
  //lista_filtro3.add(-1);


  //TipoProducto -> 7 enteros, uno para cada tipo
  lista_filtro4.add(-1); //Solo filtramos por un tipo

  matriz_filtros.add(lista_filtro1);
  matriz_filtros.add(lista_filtro2);
  matriz_filtros.add(lista_filtro3);
  matriz_filtros.add(lista_filtro4);

  //print(matriz_filtros[1]);

  List<Producto> productosFiltrados = cliente.enviarPeticion(catalogo, matriz_filtros);
                                      
 /* var salir = false;

  while(!salir){
    print(" \n---------------------------------- MENU ------------------------------ ");
    print(" [f] Filtrar por precio");
    print(" [d] Filtrar por distancia");
    print(" [e] Filtrar por estado");
    print(" [t] Filtrar por tipo");
    print(" [s] Salir");
    print(" ---------------------------------------------------------------------- ");

    var res = stdin.readLineSync();

    if(res == "f"){
      print(" Escriba un precio tope: ");
      res = stdin.readLineSync();
      matrizFiltros[0] = int.parse(res);
      print(" Guardado: $matrizFiltros");
    }

    if(res == "d"){
      print(" Escriba uns distancia tope: ");
      res = stdin.readLineSync();
      matrizFiltros[1] = int.parse(res);
      print(" Guardado: $matrizFiltros");
    }

    if(res == "e"){
      var terminar = false;
      var i = 0;
      List<int> lista = [];

      while (!terminar){
        print(" ¿Por qué estado(s) quiere filtrar? ");
        print(" [0] Nuevo");
        print(" [1] Excelente");
        print(" [2] Bueno");
        print(" [3] Roto");

        res = stdin.readLineSync();

        if(res == "x"){
            terminar = true;
            matrizFiltros[2].add(lista);
        } else{
            lista.add(int.parse(res));
            print(" Guardado: $lista");
        }
      }
    }

    if(res == "t"){
      var terminar = false;

      while (!terminar){
        print(" ¿Por qué tipo quiere filtrar? ");
        print(" [0] Cuadros");
        print(" [1] Lienzos");
        print(" [2] Pinceles");
        print(" [3] Lápices");
        print(" [4] Caballetes");
        print(" [5] Esculturas");
        print(" [6] Pinturas");
        
        res = stdin.readLineSync();
        if(res == "x")
          terminar = true;
        else{
            matrizFiltros[3].add(int.parse(res));
            print(" Guardado: $matrizFiltros");
        }
        
      }
    }

    if(res == "s")
      salir = true;
  }*/
    

}
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart'; // Para los test de integración
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
import 'package:practica2/VistaModelo.dart';
import 'package:practica2/WidgetMyApp.dart';

import 'package:practica2/main.dart';

void main() {
  Objetivo objetivo = new Objetivo();
  GestorFiltros gestorFiltros = new GestorFiltros(objetivo);

  gestorFiltros.setFiltro = new FiltroPrecio();
  gestorFiltros.setFiltro = new FiltroDistancia();
  gestorFiltros.setFiltro = new FiltroEstadoProducto();
  gestorFiltros.setFiltro = new FiltroTipoProducto(); // No sé por qué se pone un =, dart es un misterio

  Cliente cliente = new Cliente();

  cliente.setGestorFiltros = gestorFiltros;

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

  Controlador controlador = new Controlador(cliente, catalogo);
  VistaModelo vista = new VistaModelo(objetivo, catalogo);

  List<int> listaFiltro1 = [];
  List<int> listaFiltro2 = [];
  List<int> listaFiltro3 = [];
  List<int> listaFiltro4 = [];

  controlador.cambiarCatalogo(catalogo);
  controlador.aplicarFiltros();

  List<Producto> catFinal = vista.getProductosFiltrados();

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test de integración', (WidgetTester tester) async {

  const usr = Key('username');
    const pwd = Key('password');

    // Build our app and trigger a frame.
    //tester.binding.window.physicalSizeTestValue = const Size(720, 1280);
    tester.binding.window.devicePixelRatioTestValue = 1.0;
    await tester.pumpWidget(MyApp(vista, controlador));

    //Iniciar sesion como admin
    expect(find.byKey(usr), findsOneWidget); // Debe encontrar uno
    await tester.enterText(find.byKey(usr), 'AlexCollado'); // Introducimos el usuario
    
    expect(find.byKey(pwd), findsOneWidget); // Debe encontrar uno
    await tester.enterText(find.byKey(pwd), '12345'); // Introducimos la contraseña

    expect(find.text("Iniciar sesión"), findsOneWidget);
    await tester.tap(find.text("Iniciar sesión")); // Pulsamos el botón
    await tester.pumpAndSettle();

    // Verificar que se han cargado bien todos los elementos.
    expect(find.text('Lapiz 2B'), findsOneWidget); // Debe encontrar uno
    expect(find.text('Pintura del Louvre'), findsNothing); // No debe encontrar nada

    await tester.ensureVisible(find.text('Ver más de Lapiz 2B'));
    expect(find.text("Ver más de Lapiz 2B"), findsOneWidget); // Botón comprar
    await tester.tap(find.text("Ver más de Lapiz 2B")); // Pulsamos el botón
    await tester.pumpAndSettle();

    // Comprobar que hemos cambiado de página
    expect(find.text("Comprar producto"), findsOneWidget);
    await tester.tap(find.text("Comprar producto")); // Pulsamos el botón
    await tester.pumpAndSettle();

    // Comprobar que hemos cambiado de página
    //expect(find.byType(RaisedButton), findsOneWidget);
    expect(find.text("Volver a página anterior"), findsOneWidget);
    await tester.tap(find.text("Volver a página anterior")); // Pulsamos el botón
    await tester.pumpAndSettle();

    // Volvemos a la página de compra
    expect(find.text("Comprar producto"), findsOneWidget);

  });


}

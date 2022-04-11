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

void main(List<String> arguments){
  // crear gestor de filtros
  GestorFiltros gestorFiltros = new GestorFiltros();

  // Añadir los filtros
  gestorFiltros.setFiltro(new FiltroPrecio());
  gestorFiltros.setFiltro(new FiltroPrecio());
  gestorFiltros.setFiltro(new FiltroPrecio());
  gestorFiltros.setFiltro(new FiltroPrecio());



// Creacion de productos
  Producto producto1 = new Producto(10, 10, "Cuadro Mona Lisa", "Un cuadro sin más de mi abuela", TipoProducto.cuadro, EstadoProducto.nuevo);
  Producto producto2 = new Producto(200, 2, "Lapiz 2B", "Un lápiz bonito", TipoProducto.lapices, EstadoProducto.bueno);
  Producto producto3 = new Producto(500, 300, "Escultura David", "Escultura bien fachera", TipoProducto.escultura, EstadoProducto.bueno);
  Producto producto4 = new Producto(100, 55, "Caballete marrón", "Cabellete casi sin usar", TipoProducto.caballete, EstadoProducto.excelente);
  Producto producto5 = new Producto(3, 80, "Cuadro casero", "Le he dedicado muchas horas merece la pena", TipoProducto.cuadro, EstadoProducto.nuevo);
  Producto producto6 = new Producto(12, 3,  "Pincelito", "Pincelito para pintar", TipoProducto.pincel, EstadoProducto.bueno);
  Producto producto7 = new Producto(16.5, 1, "Acuarela", "Acuarela dije", TipoProducto.pinturas, EstadoProducto.roto);
  Producto producto8 = new Producto(5.25, 1.21, "Lienzo", "Aqui dibujaba Piccaso", TipoProducto.lienzo, EstadoProducto.roto);
  Producto producto9 = new Producto(1, 1, "Lapiz roto robado", "Lapiz de mi colega de clase", TipoProducto.lapices, EstadoProducto.roto);
  Producto producto10 = new Producto(200, 3, "Pincel de acuarela", "Me vinieron dos pero solo quería uno, esta sin usar", TipoProducto.pincel, EstadoProducto.excelente);
  Producto producto11 = new Producto(1200, 12.6, "Escultura de Hasbulla", "Escultura de Hasbulla 2", TipoProducto.escultura, EstadoProducto.bueno);
  Producto producto12 = new Producto(20000, 5, "Cuadro Picasso", "Cuadro de Picasso de su etapa en París", TipoProducto.lapices, EstadoProducto.excelente);
  Producto producto13 = new Producto(20, 15, "Pinturas acrílicas", "Perfectas para tus cuadros", TipoProducto.pinturas, EstadoProducto.nuevo);
  Producto producto14 = new Producto(1, 500, "Pintura industrial", "Perfectas para tu empresa", TipoProducto.pinturas, EstadoProducto.nuevo);
  Producto producto15 = new Producto(690, 55.3, "Escultura de Dios", "No se de donde saque esto", TipoProducto.escultura, EstadoProducto.excelente);

}
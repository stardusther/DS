import 'Producto.dart';

abstract class Filtro {
    List<Producto> ejecutar(List<Producto> productos, List<int> valorFiltros);
}
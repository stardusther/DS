import 'Filtro.dart';
import 'Producto.dart';
import 'TipoProducto.dart';

class FiltroTipoProducto implements Filtro{
  //List<int> valorFiltros no hace falta
  List<Producto> ejecutar(List<Producto> productos, var valor){
      List<Producto> resultado = [];

      for(var i = 0; i < productos.length; i++){
        if(productos[i].tipo == TipoProducto.values[valor]) // si el tipo coincide con el de la búsqueda
          resultado.add(productos[i]);
      }
    return resultado;
  }
}

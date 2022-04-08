import 'Filtro.dart';
import 'EstadoProducto.dart';

class FiltroEstadoProducto implements Filtro{
  List<Producto> ejecutar(List<Producto> productos, var valor){

    if(!productos.isEmpty()){ //Si la lista de productos no está vacía
      var resultado;

      for(var i = 0; i < productos.length; i++){
        if(productos.get(i)._estado == EstadoProducto.values(valor)) // si el estado coincide con el de la búsqueda
          resultado.add(productos.get(i));
      }
    }

    return resultado;
  }
}
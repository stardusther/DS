import 'Filtro.dart';
import 'EstadoProducto.dart';
import 'Producto.dart';

class FiltroEstadoProducto implements Filtro{
  List<Producto> ejecutar(List<Producto> productos, var valor){
    List<Producto> resultado = [];

    for(var j = 0; j < valor.length; j++)
    {
      for(var i = 0; i < productos.length; i++){
        if(productos[i].estado == EstadoProducto.values[valor[j]]) // si el estado coincide con el de la búsqueda
        {
          resultado.add(productos[i]);
          productos.removeAt(i); //borrar elemento i, para no volver a pasar por él en la lista
        }
      }
    }

    return resultado;
  }
}
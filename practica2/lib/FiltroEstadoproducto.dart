import 'Filtro.dart';
import 'EstadoProducto.dart';

class FiltroEstadoProducto implements Filtro{
  List<Producto> ejecutar(List<Producto> productos, var valor){
    var resultado = [];

    for(var j = 0; j < valor.length; j++)
    {
      for(var i = 0; i < productos.length; i++){
        if(productos[i]._estado == EstadoProducto.values(valor[j])) // si el estado coincide con el de la búsqueda
        {
          resultado.add(productos.get(i));
          productos.removeAt(i); //borrar elemento i, para no volver a pasar por él en la lista
        }
      }
    }

    return resultado;
  }
}
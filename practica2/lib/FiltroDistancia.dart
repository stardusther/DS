import 'Filtro.dart';
class FiltroDistancia implements Filtro {
  List<Producto> ejecutar(List<Producto> productos){

    if(!productos.isEmpty()){ //Si la lista de productos no está vacía
      var resultado;

      for(var i = 0; i < productos.size(); i++){
        if(productos.get(i)._distancia <= valor) // si la distancia es menor o igual a la de la búsqueda
          resultado.add(productos.get(i));
      }
    }
    
    return resultado;
  }
}
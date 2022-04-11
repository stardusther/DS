import 'Filtro.dart';

class FiltroDistancia implements Filtro {
  List<Producto> ejecutar(List<Producto> productos){

    var resultado = [];

    for(var i = 0; i < productos.length; i++){
      if(productos[i]._distancia <= valor) // si la distancia es menor o igual a la de la búsqueda
        resultado.add(productos.get(i));
    }
    
    return resultado;
  }
}
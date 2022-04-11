import 'Filtro.dart';
import 'Producto.dart';

class FiltroPrecio implements Filtro{
  List<Producto> ejecutar(List<Producto> productos, var valor){
    List<Producto> resultado = [];

    for(var i = 0; i < productos.length; i++){
        if(productos[i].precio <= valor) // si el precio es menor o igual al de la búsqueda
          resultado.add(productos[i]);
    }
    
    return resultado;
  }
}
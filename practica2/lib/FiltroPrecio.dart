import 'Filtro.dart';

class FiltroPrecio implements Filtro{
  List<Producto> ejecutar(List<Producto> productos, var valor){
    var resultado = [];

    for(var i = 0; i < productos.length; i++){
        if(productos[i]._precio <= valor) // si el precio es menor o igual al de la búsqueda
          resultado.add(productos.get(i));
    }
    
  return resultado;
}
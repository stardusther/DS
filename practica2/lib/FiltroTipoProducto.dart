import 'Filtro.dart';
class FiltroTipoProducto implements Filtro{
  //List<int> valorFiltros no hace falta
  List<Producto> ejecutar(List<Producto> productos, var valor){
      var resultado = [];

      for(var i = 0; i < productos.length; i++){
        if(productos[i]._tipo == TipoProducto.values(valor)) // si el tipo coincide con el de la búsqueda
          resultado.add(productos.get(i));
      }
    return resultado;
  }
}

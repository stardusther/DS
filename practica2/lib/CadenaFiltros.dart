import 'Filtro.dart';
import 'Objetivo.dart';
import 'Producto.dart';

class CadenaFiltros{
    // Variables
    var arrayFiltros = [];
    Objetivo _objetivo;

    //Constructor
    CadenaFiltros(this._objetivo);

    List<Producto> ejecutar(List<Producto> productos, List<int> valorFiltros){
      return List.empty();
    }

    void aniadirFiltro(Filtro f){
      arrayFiltros.add(f);
    }
  }
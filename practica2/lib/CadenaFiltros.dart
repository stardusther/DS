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
      List<Producto> productosFiltrados = productos; // Inicialmente no hemos fitrado nada

      for(var i = 0; i < arrayFiltros.length; i++){
        var valor = valorFiltros[i];
        var filtro = arrayFiltros[i]; // Filtro a aplicar

        if(valor != -1) // Si el valor es -1 no se aplica el filtro
          productosFiltrados = filtro.ejecutar(productosFiltrados, valor); 
      }

      _objetivo.ejecutar(productosFiltrados, valorFiltros); // E: no estoy segura de qué parámetros pasarle
    }

    void aniadirFiltro(Filtro f){
      arrayFiltros.add(f);
    }

    void set setObjetivo(Objetivo obj){
        _objetivo = obj;
    }
  }
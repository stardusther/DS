import 'Filtro.dart';
import 'Objetivo.dart';
import 'Producto.dart';

class CadenaFiltros{
    // Variables
    var arrayFiltros = [];
    Objetivo _objetivo;
    

    //Constructor
    CadenaFiltros(this._objetivo);

    List<Producto> ejecutar(List<Producto> productos, var valorFiltros){
      List<Producto> productosFiltrados = productos; // Inicialmente no hemos fitrado nada

      for(var i = 0; i < arrayFiltros.length; i++){
        var valor = valorFiltros[i];

        if(valor != -1 || ( i == 2 && !valor.isEmpty())) // Si el valor es -1 o no hay nada en la lista de estado no se aplica el filtro
        {
          var filtro = arrayFiltros[i]; // Filtro a aplicar (el 3er filtro (index = 2) es el array de estados)
          productosFiltrados = filtro.ejecutar(productosFiltrados, valor); 
        }
      }

      _objetivo.ejecutar(productosFiltrados, valorFiltros); // E: no estoy segura de qué parámetros pasarle

      return productosFiltrados;
    }

    void aniadirFiltro(Filtro f){ //precio, distancia, tipo y estado
      arrayFiltros.add(f);
    }

    void set setObjetivo(Objetivo obj){
        _objetivo = obj;
    }
  }
import 'CadenaFiltros.dart';
import 'Objetivo.dart';
import 'Producto.dart';
import 'Filtro.dart';

class GestorFiltros{

    // Variables
    CadenaFiltros? _cadena = null; //? es que se pueda hacer null

    //Constructor TODO
    //Se quito el new en _cadena = CadenaFiltros(obj)
    GestorFiltros(Objetivo obj){
        _cadena = CadenaFiltros(obj);
    }

    // Métodos
    void set setFiltro(Filtro f){
      _cadena!.aniadirFiltro(f); 
    }

    List<Producto> filterResquest(List<Producto> productos, var valorFiltros)
    {
      return _cadena!.ejecutar(productos, valorFiltros); //Si no es nula la cadena ! //Add Null Check
    }

}
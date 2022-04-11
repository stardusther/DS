import 'Producto.dart';
import 'GestorFiltros.dart';

class Cliente{
  GestorFiltros _gestor;

// Constructor
  Cliente(this._gestor);

/**
 * @brief Envía la petición al filter manager y devuelve la lista de productos filtrada
 * @param producto Lista de productos
 * @param valorFiltros Lista de filtros que se van a aplicar
*/
  List<Producto> enviarPeticion(List<Producto> productos, List<int> valorFiltros){
    return _gestor.filterResquest(productos, valorFiltros);
  }

  void set setGestorFiltros(GestorFiltros g){
    _gestor = g;
  }
}
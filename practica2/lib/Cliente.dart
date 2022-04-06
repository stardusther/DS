import 'Producto.dart';
import 'GestorFiltros.dart';

class Cliente{
  GestorFiltros _gestor;

// Constructor
  Cliente(this._gestor);

  List<Producto> enviarPeticion(List<Producto> productos, List<int> valorFiltros){
    return _gestor.filterResquest(productos, valorFiltros);
  }
}
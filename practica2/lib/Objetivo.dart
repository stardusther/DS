import 'Producto.dart';

class Objetivo{
    /**
    * @brief Método que saca por pantalla los productos filtrados por las categorías seleccionadas
    * @param valorFiltros Array de valores de filtros
    */
    void ejecutar(List<Producto> productos, var valorFiltros){

      for(var i = 0; i < productos.length; i++){
        var nombre = productos[i].nombre;
        var precio = productos[i].precio;
        var distancia = productos[i].distancia;
        var descripcion = productos[i].descripcion;
        var estado = productos[i].estado.toString().split('.').last; // ej: de "EstadoProducto.roto" imprime "roto"
        var tipo = productos[i].tipo.toString().split('.').last;

        print("---------------------- PRODUCTO $i ----------------------");
        print("Nombre: $nombre");
        print("Precio: $precio");
        print("Distancia: $distancia");
        print("Descripcion: $descripcion");
        print("Estado: $estado");
        print("Tipo: $tipo");
        print("--------------------------------------------------------");
      }
    }
}
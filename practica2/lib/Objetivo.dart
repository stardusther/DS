class Objetivo{
    /**
    * @brief Método que saca por pantalla los productos filtrados por las categorías seleccionadas
    */
    void ejecutar(List<Productos> productos, List<int> valorFiltros){

      for(var i = 0; i < productos.length; i++){
        var nombre = productos[i]._nombre;
        var precio = productos[i]._precio;
        var distancia = productos[i]._distancia;
        var descripcion = productos[i]._descripcion;
        var estado = productos[i]._estado.toString().split('.').last; // ej: de "EstadoProducto.roto" imprime "roto"
        var tipo = productos[i]._tipo.toString().split('.').last;

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
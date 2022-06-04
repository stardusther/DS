// ignore_for_file: unnecessary_new

import 'EstadoProducto.dart';
import 'Producto.dart';
import 'TipoProducto.dart';
import 'Usuario.dart';

class AccesoAPI {
  bool comprarProducto(int id_producto, Usuario usuario) { //No hace nada pero contemplado para cuando llegase su momento
    //return _acceso_api.comprarProducto(id_producto, usuario);
    //print(usuario.nombre + " " + usuario.correo + " " + usuario.direccion);
    return true;
  }

  Producto? getProducto(int id_producto) { //No usado
    return null;
  }

  Usuario? comprobarLogin(String username, String password) {
    Usuario user = new Usuario(username, "Correo prueba", "Direccion Prueba");
    if (username == "a")
      return null;
    else
      return user;
    //return _acceso_api.comprobarLogin(username, password);
  }

  bool registrarse(String username, String password, String direccion, String correo) {
    //OJO no permitir que tenga username repetido
    return true;
    //return _acceso_api.registrarse(username, password, direccion, correo);
  }

  List<Producto> getProductos() { //Cogeriamos todos los produtos de la BD y los enviariamos
    // Creacion de un catalogo de productos
    Producto producto1 = new Producto(10, 10, "Cuadro Mona Lisa", "Un cuadro sin más de mi abuela", TipoProducto.cuadro, EstadoProducto.nuevo);
    Producto producto2 = new Producto(200, 2, "Lapiz 2B", "Un lápiz bonito", TipoProducto.lapices, EstadoProducto.bueno);
    Producto producto3 = new Producto(500, 300, "Escultura David", "Escultura bien fachera", TipoProducto.escultura, EstadoProducto.bueno);
    Producto producto4 = new Producto(100, 55, "Caballete marrón", "Caballete casi sin usar", TipoProducto.caballete, EstadoProducto.excelente);
    Producto producto5 = new Producto(3, 80, "Cuadro casero", "Le he dedicado muchas horas merece la pena", TipoProducto.cuadro, EstadoProducto.nuevo);
    Producto producto6 = new Producto(12, 3, "Pincelito", "Pincelito para pintar", TipoProducto.pincel, EstadoProducto.bueno);
    Producto producto7 = new Producto(16.55, 1, "Acuarela", "Acuarela dije", TipoProducto.pinturas, EstadoProducto.roto);
    Producto producto8 = new Producto(5, 2, "Lienzo", "Aqui dibujaba Piccaso", TipoProducto.lienzo, EstadoProducto.roto);
    Producto producto9 = new Producto(1, 1, "Lapiz roto robado", "Lapiz de mi colega de clase", TipoProducto.lapices, EstadoProducto.roto);
    Producto producto10 = new Producto(300, 3, "Pincel de acuarela", "Me vinieron dos pero solo quería uno, esta sin usar", TipoProducto.pincel, EstadoProducto.excelente);
    Producto producto11 = new Producto(200, 7, "Escultura de Hasbulla", "Escultura de Hasbulla 2", TipoProducto.escultura, EstadoProducto.bueno);
    Producto producto12 = new Producto(350, 5, "Cuadro Picassito", "Cuadro de Picasso de su etapa en París", TipoProducto.lapices, EstadoProducto.excelente);
    Producto producto13 = new Producto(20, 15, "Pinturas acrílicas", "Perfectas para tus cuadros", TipoProducto.pinturas, EstadoProducto.nuevo);
    Producto producto14 = new Producto(1, 500, "Pintura industrial", "Perfectas para tu empresa", TipoProducto.pinturas, EstadoProducto.nuevo);
    Producto producto15 = new Producto(235, 55.3, "Escultura de Dios", "No se de donde saque esto", TipoProducto.escultura, EstadoProducto.excelente);
    Producto producto16 = new Producto(5, 7, "Caballete (o eso creo)", "No sé que es, pero lo vendo", TipoProducto.caballete, EstadoProducto.roto);

    // Crear catalogo - coleccion de productos
    List<Producto> catalogo = [];

    catalogo.add(producto1);
    catalogo.add(producto2);
    catalogo.add(producto3);
    catalogo.add(producto4);
    catalogo.add(producto5);
    catalogo.add(producto6);
    catalogo.add(producto7);
    catalogo.add(producto8);
    catalogo.add(producto9);
    catalogo.add(producto10);
    catalogo.add(producto11);
    catalogo.add(producto12);
    catalogo.add(producto13);
    catalogo.add(producto14);
    catalogo.add(producto15);
    catalogo.add(producto16);

    return catalogo;
  }
}

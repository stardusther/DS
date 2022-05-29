// ignore_for_file: unnecessary_new

import 'Usuario.dart';

class AccesoAPI {
  comprarProducto(int id_producto, Usuario usuario) {
    //return _acceso_api.comprarProducto(id_producto, usuario);
    print(usuario.nombre+" "+usuario.correo+" "+usuario.direccion);
    return true;
  }

  getProducto(int id_producto) {
    //return _acceso_api.getProducto(id_producto);
    return true;
  }

  comprobarLogin(String username, String password) {
    Usuario user = new Usuario(username, "Correo prueba", "Direccion Prueba");
    return user;
    //return _acceso_api.comprobarLogin(username, password);
  }

  registrarse(String username, String password, String direccion, String correo) {
    return true;
    //return _acceso_api.registrarse(username, password, direccion, correo);
  }

  getProductos() {

  }
}

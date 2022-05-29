class Usuario {
  String _nombre = "";
  String _correo = "";
  String _direccion = "";

  Usuario(String nombre, String correo, String direccion) {
    _nombre = nombre;
    _correo = correo;
    _direccion = direccion;
  }

  String get nombre => _nombre;
  String get correo => _correo;
  String get direccion => _direccion;

  void set nombre(String unNombre) {
    _nombre = unNombre;
  }

  void set correo(String unCorreo) {
    _correo = unCorreo;
  }

  void set direccion(String unaDireccion) {
    _direccion = unaDireccion;
  }
}

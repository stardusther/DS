import 'package:flutter/material.dart';
import 'package:practica2/WidgetRegistro.dart';

import 'Usuario.dart';
import 'VistaModelo.dart';
import 'Controlador.dart';
import 'WidgetPaginaPrincipal.dart';
import 'WidgetRegistro.dart';

final formKey = GlobalKey<FormState>();
final errorKey = GlobalKey();

//Pantalla inicial de la aplicacion
class Inicio extends StatelessWidget {
  String _nombre_usuario = "";
  String _contrasenia = "";
  Vista _vista;
  Usuario? _usuario = null;
  Controlador _controlador;

  Inicio(Vista vista, Controlador controlador, {Key? key})
      : _vista = vista,
        _controlador = controlador,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              //Container con el que iniciamos sesion
              margin: const EdgeInsets.only(
                  top: 150, bottom: 200, right: 10, left: 10),
              padding:
                  const EdgeInsets.only(top: 15, bottom: 15, right: 5, left: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  const Text("Introduce tus datos de usuario: "),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Container(
                            //input para el texto
                            margin: const EdgeInsets.only(
                                top: 15, bottom: 2.5, right: 10, left: 10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Usuario',
                                  hintText: 'Escribe tu nombre de usuario'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Nombre de usuario requerido";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                _nombre_usuario = value!;
                              },
                            ),
                          ),
                          Container(
                            //input para contraseña
                            margin: const EdgeInsets.only(
                                top: 2.5, bottom: 5, right: 10, left: 10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Contraseña',
                                  hintText: 'Escribe tu contraseña'),
                              obscureText: true, //que no se pueda ver el texto
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Contraseña requerida";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                _contrasenia = value!;
                              },
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 7.5, right: 10, left: 10),                          
                          child: 
                            Text(
                              "ERROR - el usuario o la contraseña no son correctos", 
                              style: TextStyle(color: Colors.red),
                              key : errorKey,
                              
                            ),
                        )
                        ],
                      )),
                  RaisedButton(
                    //Boton para enviar el formulario
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        //Si estan rellenos los campos
                        formKey.currentState!.save(); //Guardar lo que esta escrito

                        _usuario = _controlador.comprobarLogin(_nombre_usuario, _contrasenia);
                        if (_usuario != null) { //Si el usuario existe
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => PaginaPrincipal(
                                    "Filtros de Productos Artísticos",
                                    _vista,
                                    _controlador, _usuario!)),
                          );
                        }

                        /*
                        else { //Si no existe el usuario, muestre mensaje de error
                          const Text("Error, el usuario o la contraseña no son correctos");
                        } ERROR TODO*/
                      }
                    },
                    child: const Text('Iniciar sesión'),
                  ),

                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(7.5),
                    child: Column(
                      children: [
                        const Text("¿No tienes cuenta? ¡Registrate!"),
                        RaisedButton(
                          child:  const Text("Registrarse"),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context) => Registro()
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

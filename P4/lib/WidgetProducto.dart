import 'package:flutter/material.dart';
import 'package:practica2/VistaModelo.dart';

import 'Producto.dart';
import 'WidgetCompra.dart';
import 'VistaModelo.dart';

class WidgetProducto extends StatelessWidget {
  Producto _producto;

  WidgetProducto(Producto prod, {Key? key})
      : _producto = prod,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Producto"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  top: 50, bottom: 50, right: 10, left: 10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.orange,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: <Widget>[
                  //Podriamos hacer widget de vista modelo q
                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        const Text("Nombre: ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(_producto.nombre),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        const Text("Descripcion: ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(_producto.descripcion),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        const Text("Precio: ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(_producto.precio.toString() + "€"),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        const Text("Distancia: ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(_producto.distancia.toString() + "km"),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        const Text("Estado: ",style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(VistaModelo.formateaEstadoProducto(_producto.estado.toString())), 
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(
                        top: 0, bottom: 5, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        const Text("Tipo: ",style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(VistaModelo.formateaTipoProducto(_producto.tipo.toString())), 
                      ],
                    ),
                  ),

                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WidgetCompra(_producto)),
                      );
                    },
                    child: const Text("Comprar producto"),
                    color: const Color.fromARGB(255, 248, 231, 80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:practica2/Vista.dart';

import 'Producto.dart';
import 'TipoProducto.dart';
import 'EstadoProducto.dart';
import 'Cliente.dart';
import 'Objetivo.dart';
import 'CadenaFiltros.dart';
import 'Filtro.dart';
import 'GestorFiltros.dart';
import 'FiltroPrecio.dart';
import 'FiltroDistancia.dart';
import 'FiltroEstadoProducto.dart';
import 'FiltroTipoProducto.dart';
import 'Controlador.dart';
import 'WidgetCompra.dart';

import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  String title;
  Vista _vista;
  Controlador _controlador;

  MyHomePage(String title, Vista vista, Controlador controlador, {Key? key})
      : this.title = title,
        _vista = vista,
        _controlador = controlador,
        super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _valor_actual_precios = 0;
  double _valor_actual_distancia = 0;
  String? _valor_tipo = 'Ninguno';
  final _tipos_producto = [
    'Ninguno',
    'Cuadro',
    'Lienzo',
    'Pincel',
    'Lapices',
    'Caballete',
    'Escultura',
    'Pinturas'
  ];
  List<bool> _estados_seleccionados =
      List.generate(4, (_) => false); //4 porque tenemos 4 estados.

  //Mejora para los _slider y selector :  no usar número mágicos (posible actualizacion)
  void _sliderDistancia() {
    int valor_filtro = _valor_actual_distancia.round();
    if (_valor_actual_distancia.round() == 0) //Si es 0, no aplicar filtro
      valor_filtro = -1;

    widget._controlador.modificarFiltro(
        1, [valor_filtro]); //Modificar el filtro de distancia con el valor dado
    //print("$_valor_actual_precios");
  }

  void _sliderPrecio() {
    int valor_filtro = _valor_actual_precios.round();
    if (_valor_actual_precios.round() == 0) //Si es 0, no aplicar filtro
      valor_filtro = -1;

    widget._controlador.modificarFiltro(
        0, [valor_filtro]); //Modificar el filtro de precio con el valor dado
    //print("$_valor_actual_precios");
  }

  void _selectorTipo() {
    if (_valor_tipo == 'Ninguno')
      widget._controlador.modificarFiltro(3, [-1]);
    else if (_valor_tipo == 'Cuadro')
      widget._controlador.modificarFiltro(3, [0]);
    else if (_valor_tipo == 'Lienzo')
      widget._controlador.modificarFiltro(3, [1]);
    else if (_valor_tipo == 'Pincel')
      widget._controlador.modificarFiltro(3, [2]);
    else if (_valor_tipo == 'Lapices')
      widget._controlador.modificarFiltro(3, [3]);
    else if (_valor_tipo == 'Caballete')
      widget._controlador.modificarFiltro(3, [4]);
    else if (_valor_tipo == 'Escultura')
      widget._controlador.modificarFiltro(3, [5]);
    else if (_valor_tipo == 'Pinturas')
      widget._controlador.modificarFiltro(3, [6]);
  }

  void _selectorEstados() {
    List<int> estados = [];

    for (int i = 0; i < _estados_seleccionados.length; i++) {
      if (_estados_seleccionados[i]) estados.add(i);
    }

    if (estados.isEmpty) //Si no hay boton seleccionado, mostrar todos
      estados.add(-1);

    widget._controlador.modificarFiltro(2, estados);
  }

  void _aplicarFiltros() {
    setState(() {
      _sliderPrecio();
      _sliderDistancia();
      _selectorTipo();
      _selectorEstados();
      widget._controlador.aplicarFiltros(widget._controlador.catalogo_inicial);
    });
  }

  @override
  Widget build(BuildContext context) {
    //Llamado cada vez que llamamos a setState y para crear todo
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), //Coger valor de MyHomePage
      ),

      //Faltaria parte de botones ¿Container de columna?
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          //Colocar en medio
          child: Column(
            //Coge lista de hijos y los coloca verticalmente
            //mainAxisAlignment: MainAxisAlignment.end, //Abajo verticalmente
            children: <Widget>[
              Container(
                //Metemos botones, y le ponemos borde a la zona de botones
                  margin: const EdgeInsets.only(
                    top: 2, bottom: 2, right: 10, left: 10),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                  color: Color.fromARGB(0, 200, 186, 220), //color naranjita
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),

                child: Column(//Botones y textos
                  children: <Widget>[
                    Text("Filtro Precio: "),
                    Slider(
                      //Paquete flutter_xlider y funcion para divisiones customs
                      key: const Key('sliderPrecio'),
                      min: 0,
                      max: 250,
                      divisions: 25,
                      label: "$_valor_actual_precios",
                      value: _valor_actual_precios,
                      onChanged: (nuevoRating) {
                        setState(() => _valor_actual_precios = nuevoRating);
                      },
                    ),

                    Text("Filtro Distancia: "),
                    Slider(
                      //Paquete flutter_xlider y funcion para divisiones customs
                      key: const Key('sliderDistancia'),
                      min: 0,
                      max: 200,
                      divisions: 10,
                      label: "$_valor_actual_distancia",
                      value: _valor_actual_distancia,
                      onChanged: (nuevoRating) {
                        setState(() => _valor_actual_distancia = nuevoRating);
                      },
                    ),

                    Text("Filtro Tipo:"),
                    DropdownButton<String>(
                      value: _valor_tipo,
                      items: _tipos_producto.map(buildMenuItem).toList(),
                      onChanged: (valor) {
                        setState(() => _valor_tipo = valor);
                      },
                    ),

                    Text("Filtro Estado:"),
                    ToggleButtons(
                      children: const <Widget>[
                        Text('Nuevo'),
                        Text('Excelente'),
                        Text('Bueno'),
                        Text('Roto'),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      borderWidth: 3,
                      borderColor: Color(0xFF939393),
                      isSelected: _estados_seleccionados,
                      onPressed: (int index) {
                        setState(() {
                          _estados_seleccionados[index] = !_estados_seleccionados[index];
                        });
                      },
                    ),

                    Container(
                      margin: const EdgeInsets.only(
                        top: 5, bottom: 3, right: 10, left: 10),
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        child: FlatButton(
                          onPressed: _aplicarFiltros,
                          child: Text('Aplicar Filtros'),
                          color: Color.fromARGB(255, 135, 84, 182),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200)
                          ),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
              for (int i = 0; i < widget._vista.getProductosFiltrados().length; i++)
                Container(
                  margin: const EdgeInsets.only(
                    top: 2.5, bottom: 2.5, right: 10, left: 10),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromARGB(255, 198, 177, 223),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: Column(
                    children: <Widget>[
                      widget._vista.getProductosFiltradosWidget()[i],
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Compra()),
                          );
                        },
                        child: Text("Comprar " + widget._vista.getCatalogo()[i].nombre),
                        color: Color.fromARGB(255, 248, 231, 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000)
                        ),
                      ),
                    ]
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => //Crear para cada item, para seleccionar
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
} //Fin clase estado
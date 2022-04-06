/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#include <iostream>
#include "../include/Bus.h"
#include "../include/Tarjeta.h"
#include "../include/Disco.h"
#include "../include/VisitantePrecio.h"
#include "../include/VisitantePrecioDetalle.h"
#include "../include/Equipo.h"
#include <array>
using namespace std;

int main() {
    //Creamos varios equipos
    Equipo *primer_equipo = new Equipo(new Bus("primer_bus", 2),new Disco("primer_disco", 3),new Tarjeta("primera_tarjeta", 4));
    Equipo *segundo_equipo = new Equipo(new Bus("segundo_bus", 1),new Disco("segundo_disco", 3.5),new Tarjeta("segunda_tarjeta", 3));
    Equipo *tercer_equipo = new Equipo(new Bus("tercer_bus", 3),new Disco("tercer_disco", 2),new Tarjeta("tercera_tarjeta", 5));

    VisitantePrecio *visitante1 = new VisitantePrecio();
    VisitanteEquipo *visitante2 = new VisitantePrecioDetalle();

    //Precio y nombre de los componentes primer equipo
    //Cálculo del precio total
    visitante1->setCliente(comun);
    primer_equipo->getUn_disco()->aceptar(visitante1);
    primer_equipo->getUn_bus()->aceptar(visitante1);
    primer_equipo->getUna_tarjeta()->aceptar(visitante1);

    //resultados
    cout << "Primer equipo, tipo de cliente: comun:\n";

    primer_equipo->getUn_disco()->aceptar(visitante2);
    primer_equipo->getUn_bus()->aceptar(visitante2);
    primer_equipo->getUna_tarjeta()->aceptar(visitante2);

    cout << "Precio Total: " << visitante1->getTotal()<< "€\n";


    //Precio y nombre de los componentes segundo equipo
    //Cálculo del precio total

    visitante1->setCliente(estudiante); //Establecemos el tipo de cliente
    segundo_equipo->getUn_disco()->aceptar(visitante1);
    segundo_equipo->getUn_bus()->aceptar(visitante1);
    segundo_equipo->getUna_tarjeta()->aceptar(visitante1);

    //resultados
    cout << "\nSegundo equipo tipo de cliente: estudiante:\n";

    segundo_equipo->getUn_disco()->aceptar(visitante2);
    segundo_equipo->getUn_bus()->aceptar(visitante2);
    segundo_equipo->getUna_tarjeta()->aceptar(visitante2);

    cout << "Precio Total: " << visitante1->getTotal()<< "€\n";



    //Precio y nombre de los componentes Tercer equipo
    //Cálculo del precio total
    visitante1->setCliente(mayorista);
    tercer_equipo->getUn_disco()->aceptar(visitante1);
    tercer_equipo->getUn_bus()->aceptar(visitante1);
    tercer_equipo->getUna_tarjeta()->aceptar(visitante1);

    //resultados
    cout << "\nTercer equipo tipo de cliente: mayorista\n";

    tercer_equipo->getUn_disco()->aceptar(visitante2);
    tercer_equipo->getUn_bus()->aceptar(visitante2);
    tercer_equipo->getUna_tarjeta()->aceptar(visitante2);

    cout << "Precio Total: " << visitante1->getTotal()<< "€\n";


    //Liberamos memoria
    delete visitante1;
    delete visitante2;

    return 0;
}

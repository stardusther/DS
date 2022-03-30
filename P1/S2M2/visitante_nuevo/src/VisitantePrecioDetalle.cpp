/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/

#include "../include/VisitantePrecioDetalle.h"
#include <stdio.h>
#include "../include/Bus.h"
#include "../include/Disco.h"
#include "../include/Tarjeta.h"

#include <iostream>

using namespace std;
VisitantePrecioDetalle::VisitantePrecioDetalle()
{
}

void VisitantePrecioDetalle::visitarBus(Bus *element)
{
    cout << "\tBus: " << element->getNombre() << " --> " << element->getPrecio() << "€\n";
}

void VisitantePrecioDetalle::visitarTarjeta(Tarjeta *element) {
    cout << "\tTarjeta: " << element->getNombre() << " --> " << element->getPrecio() << "€\n";
}

void VisitantePrecioDetalle::visitarDisco(Disco *element) {
    cout << "\tDisco: " << element->getNombre() << " --> " << element->getPrecio() << "€\n";
}



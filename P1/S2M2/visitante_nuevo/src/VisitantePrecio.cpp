/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#include "../include/VisitantePrecio.h"
#include <stdio.h>
#include "../include/Bus.h"
#include "../include/Disco.h"
#include "../include/Tarjeta.h"

#include <iostream>

using namespace std;
VisitantePrecio::VisitantePrecio()
{
}

void VisitantePrecio::visitarBus(Bus *element)
{
    total_price += element->calcularPrecio(discount);
}

void VisitantePrecio::visitarTarjeta(Tarjeta *element) {
    total_price +=  element->calcularPrecio(discount);

}

void VisitantePrecio::visitarDisco(Disco *element) {
    total_price +=  element->calcularPrecio(discount);

}


float VisitantePrecio::getTotal() const {
    return total_price;
}

void VisitantePrecio::setCliente(Cliente client) {
    if(client == Cliente::estudiante)
        discount = 0.1;
    else if(client == Cliente::mayorista)
        discount = 0.15;
    else
        discount = 0;

    total_price = 0;
}
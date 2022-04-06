/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/

#include "../include/Bus.h"

Bus::Bus(const string &nom, double price) : ComponenteEquipo(nom, price) {}

void Bus::aceptar(VisitanteEquipo *visitante)
{
    visitante->visitarBus(this);

}
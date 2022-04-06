/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#include "../include/Tarjeta.h"

Tarjeta::Tarjeta(const string &nom, double price) : ComponenteEquipo(nom, price) {}

void Tarjeta::aceptar(VisitanteEquipo *visitante)
{
    visitante->visitarTarjeta(this);

}
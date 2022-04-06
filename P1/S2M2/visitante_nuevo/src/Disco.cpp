/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/

#include "../include/Disco.h"


Disco::Disco(const string &nom, double price) : ComponenteEquipo(nom, price) {}

void Disco::aceptar(VisitanteEquipo *visitante)
{
    visitante->visitarDisco(this);

}
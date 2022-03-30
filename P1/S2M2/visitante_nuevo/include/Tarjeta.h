/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#ifndef VISITNATE_NUEVO_TARJETA_H
#define VISITNATE_NUEVO_TARJETA_H


#include "ComponenteEquipo.h"

#include <string>


using namespace std;
class Tarjeta : public ComponenteEquipo
{
public:
    Tarjeta(const string &nom, double price);
    void aceptar(VisitanteEquipo *visitor);
};
#endif //VISITNATE_NUEVO_TARJETA_H

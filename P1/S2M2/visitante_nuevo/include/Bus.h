/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#ifndef VISITNATE_NUEVO_BUS_H
#define VISITNATE_NUEVO_BUS_H


#include "ComponenteEquipo.h"
#include <string>


using namespace std;
class Bus : public ComponenteEquipo
{
public:
    Bus(const string &nom, double price);
    void aceptar(VisitanteEquipo *visitor);
};

#endif //VISITNATE_NUEVO_BUS_H

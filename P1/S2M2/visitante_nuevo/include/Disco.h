/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#ifndef VISITNATE_NUEVO_DISCO_H
#define VISITNATE_NUEVO_DISCO_H

#include "ComponenteEquipo.h"

using namespace std;
class Disco : public ComponenteEquipo
{
public:
    Disco(const string &nom, double price);
    void aceptar(VisitanteEquipo *visitor);
};

#endif //VISITNATE_NUEVO_DISCO_H

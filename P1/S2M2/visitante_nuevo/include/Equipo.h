/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#ifndef VISITNATE_NUEVO_EQUIPO_H
#define VISITNATE_NUEVO_EQUIPO_H

#include "Bus.h"
#include "Disco.h"
#include "Tarjeta.h"

class Equipo{
private:
    ComponenteEquipo *un_disco;
    ComponenteEquipo *un_bus;
    ComponenteEquipo *una_tarjeta;
public:
    Equipo(ComponenteEquipo *bs, ComponenteEquipo *dc, ComponenteEquipo *tj);
    void aceptar( VisitanteEquipo *visitante) ;
    ComponenteEquipo* getUn_disco();
    ComponenteEquipo* getUn_bus();
    ComponenteEquipo* getUna_tarjeta();
};
#endif //VISITNATE_NUEVO_EQUIPO_H

/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#ifndef VISITNATE_NUEVO_VISITANTEPRECIODETALLE_H
#define VISITNATE_NUEVO_VISITANTEPRECIODETALLE_H

#include "VisitanteEquipo.h"

class VisitantePrecioDetalle : public VisitanteEquipo
{
public:
    VisitantePrecioDetalle();
    void visitarBus(Bus *element);
    void visitarTarjeta(Tarjeta *element);
    void visitarDisco(Disco *element);
};

#endif //VISITNATE_NUEVO_VISITANTEPRECIODETALLE_H

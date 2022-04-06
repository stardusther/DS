//
// Created by sandra on 16/3/22.
//

#ifndef VISITNATE_NUEVO_VISITANTEPRECIO_H
#define VISITNATE_NUEVO_VISITANTEPRECIO_H


#include "VisitanteEquipo.h"
#include "Cliente.h"

class VisitantePrecio : public VisitanteEquipo {
public:
    VisitantePrecio();

    void visitarBus(Bus *element);

    void visitarTarjeta(Tarjeta *element);
    void visitarDisco(Disco *element);
    float getTotal() const;

    void setCliente(Cliente client);

private:
    float total_price;
    float discount;
};
#endif //VISITNATE_NUEVO_VISITANTEPRECIO_H

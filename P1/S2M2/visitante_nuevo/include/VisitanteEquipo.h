/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/

#ifndef VISITNATE_NUEVO_VISITANTEEQUIPO_H
#define VISITNATE_NUEVO_VISITANTEEQUIPO_H

class Bus;
class Tarjeta;
class Disco;

class VisitanteEquipo
{
public:
    VisitanteEquipo();
    void virtual visitarBus(Bus *bus)=0;
    void virtual visitarTarjeta(Tarjeta *tarjeta)=0;
    void virtual visitarDisco(Disco *disco)=0;
};

#endif //VISITNATE_NUEVO_VISITANTEEQUIPO_H

/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#include "../include/Equipo.h"

// Constructor
Equipo::Equipo(ComponenteEquipo *bs, ComponenteEquipo *dc, ComponenteEquipo *tj) : un_bus(bs), un_disco(dc), una_tarjeta(tj) {}

void Equipo::aceptar( VisitanteEquipo * visitante)  {
    un_bus->aceptar(visitante);
    un_disco->aceptar(visitante);
    una_tarjeta->aceptar(visitante);

}

ComponenteEquipo* Equipo::getUn_disco(){
    return un_disco;
}
ComponenteEquipo* Equipo::getUn_bus(){
    return un_bus;
}
ComponenteEquipo* Equipo::getUna_tarjeta(){
    return una_tarjeta;
}
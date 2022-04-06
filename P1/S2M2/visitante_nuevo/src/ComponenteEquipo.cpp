/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/

#include "../include/ComponenteEquipo.h"


ComponenteEquipo::ComponenteEquipo(string nom, double price) {
    nombre = nom;
    precio = price;
}
double ComponenteEquipo::getPrecio() const {
    return precio;
}

double ComponenteEquipo::calcularPrecio(double discount){

    return precio= precio - discount*precio;
}

string ComponenteEquipo::getNombre() const {
    return nombre;
}

void ComponenteEquipo::aceptar(VisitanteEquipo *visitor)
{
}

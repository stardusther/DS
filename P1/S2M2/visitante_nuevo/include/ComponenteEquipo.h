/**
 * @author Sandra Reinoso
 * @author Esther García Gallego
*/
#ifndef VISITNATE_NUEVO_COMPONENTEEQUIPO_H
#define VISITNATE_NUEVO_COMPONENTEEQUIPO_H

#include "VisitanteEquipo.h"
#include <string>

using namespace std;
class ComponenteEquipo
{
private:
    string nombre;
    double precio;

public:
    virtual ~ComponenteEquipo() = default; // destructor
    void virtual aceptar(VisitanteEquipo *visitor);
   // virtual void aceptar(const VisitanteEquipo *visitante) const = 0;
    double getPrecio() const;
    string getNombre() const;
    double calcularPrecio(double discount);
protected:
    ComponenteEquipo(string nom, double price);
};

#endif //VISITNATE_NUEVO_COMPONENTEEQUIPO_H

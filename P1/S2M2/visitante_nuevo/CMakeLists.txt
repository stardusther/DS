cmake_minimum_required(VERSION 3.21)
project(visitnate_nuevo)

set(CMAKE_CXX_STANDARD 14)

add_executable(visitnate_nuevo src/main.cpp include/VisitanteEquipo.h src/VisitanteEquipo.cpp include/VisitantePrecioDetalle.h src/VisitantePrecioDetalle.cpp include/VisitantePrecio.h src/VisitantePrecio.cpp include/ComponenteEquipo.h src/ComponenteEquipo.cpp include/Bus.h src/Bus.cpp include/Tarjeta.h src/Tarjeta.cpp include/Disco.h src/Disco.cpp include/Cliente.h include/Equipo.h src/Equipo.cpp)

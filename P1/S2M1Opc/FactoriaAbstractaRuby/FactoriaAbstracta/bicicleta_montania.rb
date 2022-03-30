#encoding:utf-8

module FactoriaAbstracta
  class BicicletaMontania < Bicicleta
    @@contador_bicis_montania = 0

    def initialize()
      @identificador_carrera = @@contador_bicis_montania
      @@contador_bicis_montania += 1
      @tipo = LISTA_TIPOS[1]
    end
  end
end

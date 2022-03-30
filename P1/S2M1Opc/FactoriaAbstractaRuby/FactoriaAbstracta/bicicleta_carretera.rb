#encoding:utf-8

module FactoriaAbstracta
  class BicicletaCarretera < Bicicleta
    @@contador_bicis_carretera = 0

    def initialize()
      @identificador_carrera = @@contador_bicis_carretera
      @@contador_bicis_carretera += 1
      @tipo = LISTA_TIPOS[0]
    end
  end
end
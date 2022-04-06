#encoding:utf-8

module FactoriaAbstracta
  class Bicicleta
    def initialize(identificador_carrera, tipo, tiempo_abandono)
      @identificador_carrera = identificador_carrera
      @tipo = tipo
      @ha_abandonado = false
      @tiempo_abandono = tiempo_abandono
    end

    attr_reader :ha_abandonado

    def to_s
      puts "Bicicleta de " + @tipo.to_s + " con identificador " + @identificador_carrera.to_s
    end

    def abandona(tiempo)
      @ha_abandonado = true
      @tiempo_abandono = tiempo
    end

  end
end
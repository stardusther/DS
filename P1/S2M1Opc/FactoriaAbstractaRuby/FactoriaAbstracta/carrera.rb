#encoding:utf-8

module FactoriaAbstracta
  class Carrera
    def initialize(porcentaje_abandono, tipo, duracion_carrera)
      @bicicletas = Array.new
      @porcentaje = porcentaje_abandono
      @tipo = tipo
      @duracion_carrera = duracion_carrera
    end

    attr_reader :duracion_carrera

    def to_s
      puts "Carrera tipo" + @tipo.to_s
    end

    def aniade(bici)
      @bicicletas.push(bici)
    end

    def num_bicicletas
      return @bicicletas.size
    end

    def iniciar_carrera
      puts " ha comenzado"
      for i in 0..(@bicicletas.size-1) do
        # @bicicletas[i].start (no se como usar las hebras en ruby aun)
        puts "Ha comenzado la carrera: " + @bicicletas[i].to_s
      end
    end

  end
end
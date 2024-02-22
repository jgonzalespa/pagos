class Persona < ApplicationRecord
    belongs_to :capitulo

    # devuelve el nombre de un capitulo por su id
    def self.capituloName(capitulo_id)
        @name = Capitulo.select(:name).find(capitulo_id)[:name]
        return @name
    end
end

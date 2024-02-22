class Capitulo < ApplicationRecord
    has_many :personas, dependent: :destroy

    # Devuelve todos los capitulos
    def self.getCapitulos
        @capitulos = self.select(:id, :name)
        @lista = Array.new

        @capitulos.each do |capitulo|            
            @lista << [capitulo.name, capitulo.id]
        end
        return @lista
    end
end

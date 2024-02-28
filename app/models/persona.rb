class Persona < ApplicationRecord
    has_one_attached :photo
    belongs_to :capitulo
    has_many :pagos, dependent: :destroy
    

    accepts_nested_attributes_for :pagos,
        reject_if: proc{|attr|attr['fechapago'].blank? or attr['monto'].blank?}

    # devuelve el nombre de un capitulo por su id
    def self.capituloName(capitulo_id)
        @name = Capitulo.select(:name).find(capitulo_id)[:name]
        return @name
    end
end

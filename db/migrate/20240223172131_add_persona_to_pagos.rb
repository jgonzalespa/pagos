class AddPersonaToPagos < ActiveRecord::Migration[7.0]
  def change
    add_reference :pagos, :persona, null: false, foreign_key: true
  end
end

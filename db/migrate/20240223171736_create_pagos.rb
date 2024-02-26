class CreatePagos < ActiveRecord::Migration[7.0]
  def change
    create_table :pagos do |t|
      t.datetime :fechapago
      t.integer :anio
      t.integer :mes
      t.float :monto

      t.timestamps
    end
  end
end

class CreateCapitulos < ActiveRecord::Migration[7.0]
  def change
    create_table :capitulos do |t|
      t.string :name

      t.timestamps
    end
  end
end

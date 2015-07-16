class CreateHydroponics < ActiveRecord::Migration
  def change
    create_table :hydroponics do |t|
      t.date :fecha
      t.string :descripcion
      t.decimal :costo
      t.string :materiales

      t.timestamps null: false
    end
  end
end

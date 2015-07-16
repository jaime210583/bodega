class CreateHerbs < ActiveRecord::Migration
  def change
    create_table :herbs do |t|
      t.string :tipo
      t.string :descripcion
      t.decimal :precio

      t.timestamps null: false
    end
  end
end

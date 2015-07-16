class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :tipo
      t.string :descripcion
      t.integer :precio
      
      t.timestamps null: false

    end
  end
end

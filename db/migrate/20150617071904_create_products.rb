class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :tipo
      t.string :descripcion
      t.decimal :precio

      t.timestamps null: false
    end
  end
end

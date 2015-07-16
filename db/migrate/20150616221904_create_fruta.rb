class CreateFruta < ActiveRecord::Migration
  def change
    create_table :fruta do |t|
      t.string :tipo
      t.string :descripcion
      t.integer :precio

      t.timestamps null: false
    end
  end
end

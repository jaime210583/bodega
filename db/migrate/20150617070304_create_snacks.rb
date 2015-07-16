class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :tipo
      t.string :descripcion
      t.decimal :precio

      t.timestamps null: false
    end
  end
end

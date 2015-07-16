class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.string :nombre_cliente
      t.references :activity, index: true, foreign_key: true
      t.date :fecha
      t.string :nota

      t.timestamps null: false
    end
  end
end

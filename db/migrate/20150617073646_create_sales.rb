class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :fecha
      t.references :fruit, index: true, foreign_key: true
      t.references :vegetable, index: true, foreign_key: true
      t.references :bread, index: true, foreign_key: true
      t.references :snack, index: true, foreign_key: true
      t.references :dairy, index: true, foreign_key: true
      t.references :herb, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.decimal :venta_fruta
      t.decimal :venta_vegetal
      t.decimal :venta_pan
      t.decimal :venta_botana
      t.decimal :venta_lacteo
      t.decimal :venta_hierba
      t.decimal :venta_producto
      t.decimal :venta_total

      t.timestamps null: false
    end
  end
end

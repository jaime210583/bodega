class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :energy, index: true, foreign_key: true
      t.references :kitchen, index: true, foreign_key: true
      t.references :craft, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

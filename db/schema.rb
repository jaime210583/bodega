# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150625070300) do

  create_table "activities", force: :cascade do |t|
    t.integer  "energy_id",  limit: 4
    t.integer  "kitchen_id", limit: 4
    t.integer  "craft_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "activities", ["craft_id"], name: "index_activities_on_craft_id", using: :btree
  add_index "activities", ["energy_id"], name: "index_activities_on_energy_id", using: :btree
  add_index "activities", ["kitchen_id"], name: "index_activities_on_kitchen_id", using: :btree

  create_table "breads", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "energy_id",      limit: 4
    t.integer  "kitchen_id",     limit: 4
    t.integer  "craft_id",       limit: 4
    t.integer  "hydroponics_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "courses", ["craft_id"], name: "index_courses_on_craft_id", using: :btree
  add_index "courses", ["energy_id"], name: "index_courses_on_energy_id", using: :btree
  add_index "courses", ["hydroponics_id"], name: "index_courses_on_hydroponics_id", using: :btree
  add_index "courses", ["kitchen_id"], name: "index_courses_on_kitchen_id", using: :btree

  create_table "crafts", force: :cascade do |t|
    t.date     "fecha"
    t.string   "descripcion", limit: 255
    t.decimal  "costo",                   precision: 10
    t.string   "materiales",  limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "dairies", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "energies", force: :cascade do |t|
    t.date     "fecha"
    t.string   "descripcion", limit: 255
    t.decimal  "costo",                   precision: 10
    t.string   "materiales",  limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "fruits", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.integer  "precio",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "fruta", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.integer  "precio",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "herbs", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "hydroponics", force: :cascade do |t|
    t.date     "fecha"
    t.string   "descripcion", limit: 255
    t.decimal  "costo",                   precision: 10
    t.string   "materiales",  limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "inscriptions", force: :cascade do |t|
    t.string   "nombre_cliente", limit: 255
    t.integer  "activity_id",    limit: 4
    t.date     "fecha"
    t.string   "nota",           limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "inscriptions", ["activity_id"], name: "index_inscriptions_on_activity_id", using: :btree

  create_table "kitchens", force: :cascade do |t|
    t.date     "fecha"
    t.string   "descripcion", limit: 255
    t.decimal  "costo",                   precision: 10
    t.string   "materiales",  limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "sales", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "fruit_id",       limit: 4
    t.integer  "vegetable_id",   limit: 4
    t.integer  "bread_id",       limit: 4
    t.integer  "snack_id",       limit: 4
    t.integer  "dairy_id",       limit: 4
    t.integer  "herb_id",        limit: 4
    t.integer  "product_id",     limit: 4
    t.decimal  "venta_fruta",              precision: 10
    t.decimal  "venta_vegetal",            precision: 10
    t.decimal  "venta_pan",                precision: 10
    t.decimal  "venta_botana",             precision: 10
    t.decimal  "venta_lacteo",             precision: 10
    t.decimal  "venta_hierba",             precision: 10
    t.decimal  "venta_producto",           precision: 10
    t.decimal  "venta_total",              precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "sales", ["bread_id"], name: "index_sales_on_bread_id", using: :btree
  add_index "sales", ["dairy_id"], name: "index_sales_on_dairy_id", using: :btree
  add_index "sales", ["fruit_id"], name: "index_sales_on_fruit_id", using: :btree
  add_index "sales", ["herb_id"], name: "index_sales_on_herb_id", using: :btree
  add_index "sales", ["product_id"], name: "index_sales_on_product_id", using: :btree
  add_index "sales", ["snack_id"], name: "index_sales_on_snack_id", using: :btree
  add_index "sales", ["vegetable_id"], name: "index_sales_on_vegetable_id", using: :btree

  create_table "snacks", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vegetables", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "descripcion", limit: 255
    t.decimal  "precio",                  precision: 10
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_foreign_key "activities", "crafts"
  add_foreign_key "activities", "energies"
  add_foreign_key "activities", "kitchens"
  add_foreign_key "courses", "crafts"
  add_foreign_key "courses", "energies"
  add_foreign_key "courses", "kitchens"
  add_foreign_key "inscriptions", "activities"
  add_foreign_key "sales", "breads"
  add_foreign_key "sales", "dairies"
  add_foreign_key "sales", "fruits"
  add_foreign_key "sales", "herbs"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "snacks"
  add_foreign_key "sales", "vegetables"
end

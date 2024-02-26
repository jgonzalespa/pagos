# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_23_172131) do
  create_table "capitulos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.datetime "fechapago"
    t.integer "anio"
    t.integer "mes"
    t.float "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "persona_id", null: false
    t.index ["persona_id"], name: "index_pagos_on_persona_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre"
    t.string "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capitulo_id", null: false
    t.index ["capitulo_id"], name: "index_personas_on_capitulo_id"
  end

  add_foreign_key "pagos", "personas"
  add_foreign_key "personas", "capitulos"
end

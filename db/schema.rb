# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_11_214537) do

  create_table "registros", force: :cascade do |t|
    t.string "guia"
    t.string "ref"
    t.string "estado"
    t.string "fecha_salida"
    t.string "promesa_de_entrega"
    t.string "dias_de_retraso"
    t.string "intentos_de_entrega"
    t.string "nombre"
    t.string "direccion"
    t.string "informacion_adicional"
    t.string "adicional"
    t.string "ind_inter"
    t.string "comentarios"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

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

ActiveRecord::Schema.define(version: 20141010042108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consumibles", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "dimensiones"
    t.string   "material"
    t.string   "cantidad"
    t.string   "ubicacion"
    t.string   "uso"
    t.string   "responsable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", force: true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.string   "modelo"
    t.string   "serial"
    t.integer  "no_bien_nac"
    t.string   "status"
    t.date     "ultima_calibracion"
    t.string   "uso"
    t.string   "responsable"
    t.string   "ubicacion"
    t.date     "fecha_adquisicion"
    t.string   "orden_compra"
    t.float    "costo"
    t.string   "factura"
    t.boolean  "Investigacion"
    t.boolean  "Docencia"
    t.boolean  "Extension"
    t.boolean  "Gestion"
    t.string   "Calibrado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herramienta", force: true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.string   "tipo"
    t.integer  "no_bien_nac"
    t.string   "estado"
    t.string   "uso"
    t.string   "responsable"
    t.string   "ubicacion"
    t.string   "material"
    t.string   "factura"
    t.boolean  "de_un_juego"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instrumentos", force: true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.string   "modelo"
    t.string   "unidad_medida"
    t.float    "capacidad"
    t.string   "material"
    t.string   "uso"
    t.string   "estado"
    t.string   "ubicacion"
    t.date     "ultima_calibracion"
    t.string   "responsable"
    t.integer  "no_bien_nac"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sustancia_quimicas", force: true do |t|
    t.string   "nombre"
    t.string   "pureza"
    t.string   "estado_materia"
    t.boolean  "controlado"
    t.string   "regimen_legal"
    t.string   "cantidad"
    t.string   "CAS"
    t.string   "uso"
    t.string   "status"
    t.string   "responsable"
    t.string   "ubicacion"
    t.date     "caducidad"
    t.string   "peligro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "usbid"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "laboratorio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

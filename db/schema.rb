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

ActiveRecord::Schema.define(version: 20171128011705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guide_trips", force: :cascade do |t|
    t.integer  "id_trip"
    t.integer  "id_guide"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_models_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree
  end

  create_table "passenger_trips", force: :cascade do |t|
    t.integer  "id_passenger"
    t.integer  "id_trip"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "email"
    t.integer  "cantidad"
    t.string   "hostal"
    t.string   "documento"
    t.string   "idioma"
    t.string   "booking"
    t.boolean  "estado_disponibilidad"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "email",                      default: "",    null: false
    t.string   "encrypted_password",         default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "status",                     default: 0
    t.boolean  "admin",                      default: false
    t.string   "nombre",                     default: ""
    t.string   "rut",                        default: ""
    t.string   "fono",                       default: ""
    t.string   "tipo_vehiculo",              default: ""
    t.string   "telefono_emergencia",        default: ""
    t.string   "nombre_contacto_emergencia", default: ""
    t.string   "patente_vehiculo",           default: ""
    t.index ["email"], name: "index_sessions_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_sessions_on_reset_password_token", unique: true, using: :btree
  end

  create_table "trip_types", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "id_passenger_trip"
    t.integer  "id_guide_passenger"
    t.integer  "id_trip_type"
    t.string   "trip_name"
    t.date     "trip_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end

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

ActiveRecord::Schema.define(version: 20161124152640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "booking_time"
    t.integer  "price"
    t.string   "status"
    t.integer  "customer_id"
    t.integer  "service_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "end_time"
    t.datetime "start_time"
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.index ["customer_id"], name: "index_bookings_on_customer_id", using: :btree
    t.index ["service_id"], name: "index_bookings_on_service_id", using: :btree
  end

  create_table "businesses", force: :cascade do |t|
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
    t.string   "address"
    t.string   "name"
    t.string   "phone_number"
    t.integer  "service_id"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description"
    t.index ["email"], name: "index_businesses_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_businesses_on_reset_password_token", unique: true, using: :btree
    t.index ["service_id"], name: "index_businesses_on_service_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.index ["email"], name: "index_customers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.integer  "duration"
    t.integer  "price"
    t.integer  "business_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["business_id"], name: "index_services_on_business_id", using: :btree
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "services"
  add_foreign_key "businesses", "services"
  add_foreign_key "services", "businesses"
end

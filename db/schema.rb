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

ActiveRecord::Schema.define(version: 20131023181810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quotes", force: true do |t|
    t.string   "provider",   null: false
    t.decimal  "price",      null: false
    t.text     "info",       null: false
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "service_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.string   "password_digest",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.boolean  "owner",           default: false
  end

  add_foreign_key "quotes", "services", name: "quotes_service_id_fk"
  add_foreign_key "quotes", "users", name: "quotes_user_id_fk"

end

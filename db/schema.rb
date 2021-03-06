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

ActiveRecord::Schema.define(version: 2021_03_10_131440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "profession"
    t.string "charge"
    t.string "amount"
    t.string "technical_unit"
    t.string "fiscal_inspector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "person_type"
    t.boolean "employee_type"
    t.integer "user_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "resolution"
    t.string "working_day"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "permanences", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "end_date"
    t.string "resolution"
    t.bigint "period_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount"
    t.integer "user_id"
    t.index ["period_id"], name: "index_permanences_on_period_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "ubication"
    t.string "bip"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stage"
    t.integer "user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "specialty"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "profession"
    t.index ["employee_id"], name: "index_teams_on_employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "permanences", "periods"
  add_foreign_key "teams", "employees"
end

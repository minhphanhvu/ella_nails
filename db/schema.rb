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

ActiveRecord::Schema[7.1].define(version: 2024_04_06_013945) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "twitter"
    t.string "email"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nail_employees", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nail_service_templates", force: :cascade do |t|
    t.interval "duration", null: false
    t.float "price", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_category_id", null: false
    t.index ["service_category_id"], name: "index_nail_service_templates_on_service_category_id"
  end

  create_table "nail_services", force: :cascade do |t|
    t.interval "duration", null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "nail_employee_id", null: false
    t.string "name"
    t.bigint "nail_service_template_id", null: false
    t.index ["nail_employee_id"], name: "index_nail_services_on_nail_employee_id"
    t.index ["nail_service_template_id"], name: "index_nail_services_on_nail_service_template_id"
  end

  create_table "scheduled_slots", force: :cascade do |t|
    t.time "time_start", null: false
    t.time "time_end", null: false
    t.date "scheduled_date", null: false
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.bigint "nail_employee_id", null: false
    t.index ["customer_id"], name: "index_scheduled_slots_on_customer_id"
    t.index ["nail_employee_id"], name: "index_scheduled_slots_on_nail_employee_id"
  end

  create_table "service_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "nail_service_templates", "service_categories"
  add_foreign_key "nail_services", "nail_employees"
  add_foreign_key "nail_services", "nail_service_templates"
  add_foreign_key "scheduled_slots", "customers"
  add_foreign_key "scheduled_slots", "nail_employees"
end

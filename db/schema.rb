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

ActiveRecord::Schema[8.0].define(version: 2025_01_12_024252) do
  create_table "form_field_options", force: :cascade do |t|
    t.string "value"
    t.integer "order"
    t.integer "form_field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_field_id"], name: "index_form_field_options_on_form_field_id"
  end

  create_table "form_fields", force: :cascade do |t|
    t.integer "form_template_id"
    t.string "label"
    t.integer "order"
    t.string "field_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_template_id"], name: "index_form_fields_on_form_template_id"
  end

  create_table "form_responses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "form_template_id", null: false
    t.json "response_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_template_id"], name: "index_form_responses_on_form_template_id"
    t.index ["user_id"], name: "index_form_responses_on_user_id"
  end

  create_table "form_templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "form_field_options", "form_fields"
  add_foreign_key "form_fields", "form_templates"
  add_foreign_key "form_responses", "form_templates"
  add_foreign_key "form_responses", "users"
end

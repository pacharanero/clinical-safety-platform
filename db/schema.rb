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

ActiveRecord::Schema[7.0].define(version: 2022_02_14_165041) do
  create_table "clinical_systems", force: :cascade do |t|
    t.string "system_name"
    t.text "description"
    t.integer "supplier_id", null: false
    t.integer "clinical_safety_officer_id", null: false
    t.date "go_live_date"
    t.date "review_date"
    t.integer "technical_owner_id", null: false
    t.integer "organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinical_safety_officer_id"], name: "index_clinical_systems_on_clinical_safety_officer_id"
    t.index ["organisation_id"], name: "index_clinical_systems_on_organisation_id"
    t.index ["supplier_id"], name: "index_clinical_systems_on_supplier_id"
    t.index ["technical_owner_id"], name: "index_clinical_systems_on_technical_owner_id"
  end

  add_foreign_key "clinical_systems", "clinical_safety_officers"
  add_foreign_key "clinical_systems", "organisations"
  add_foreign_key "clinical_systems", "suppliers"
  add_foreign_key "clinical_systems", "technical_owners"
end

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

ActiveRecord::Schema.define(version: 20150617144840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mismo_enum_amortization_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_amortization_types", ["name"], name: "index_mismo_enum_amortization_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_automated_underwriting_system_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_automated_underwriting_system_types", ["name"], name: "index_mismo_enum_automated_underwriting_system_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_borrower_classification_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_borrower_classification_types", ["name"], name: "index_mismo_enum_borrower_classification_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_citizenship_residency_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_citizenship_residency_types", ["name"], name: "index_mismo_enum_citizenship_residency_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_construction_method_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_construction_method_types", ["name"], name: "index_mismo_enum_construction_method_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_gender_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_gender_types", ["name"], name: "index_mismo_enum_gender_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_index_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_index_types", ["name"], name: "index_mismo_enum_index_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_loan_purpose_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_loan_purpose_types", ["name"], name: "index_mismo_enum_loan_purpose_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_marital_status_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_marital_status_types", ["name"], name: "index_mismo_enum_marital_status_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_mortgage_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_mortgage_types", ["name"], name: "index_mismo_enum_mortgage_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_postal_states", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_postal_states", ["name"], name: "index_mismo_enum_postal_states_on_name", unique: true, using: :btree

  create_table "mismo_enum_prepayment_penalty_option_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_prepayment_penalty_option_types", ["name"], name: "index_mismo_enum_prepayment_penalty_option_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_project_design_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_project_design_types", ["name"], name: "index_mismo_enum_project_design_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_project_legal_structure_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_project_legal_structure_types", ["name"], name: "index_mismo_enum_project_legal_structure_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_property_usage_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_property_usage_types", ["name"], name: "index_mismo_enum_property_usage_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_property_valuation_method_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_property_valuation_method_types", ["name"], name: "index_mismo_enum_property_valuation_method_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_rate_lock_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_rate_lock_types", ["name"], name: "index_mismo_enum_rate_lock_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_refinance_cash_out_determination_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_refinance_cash_out_determination_types", ["name"], name: "index_mismo_enum_refinance_cash_out_determination_types_on_name", unique: true, using: :btree

  create_table "mismo_enum_taxpayer_identifier_types", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "mismo_enum_taxpayer_identifier_types", ["name"], name: "index_mismo_enum_taxpayer_identifier_types_on_name", unique: true, using: :btree

end

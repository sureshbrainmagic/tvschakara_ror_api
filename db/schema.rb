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

ActiveRecord::Schema.define(version: 2020_09_04_052359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "operators", force: :cascade do |t|
    t.string "username", limit: 30
    t.string "Password", limit: 15
    t.string "mobileno", limit: 12
    t.string "emailID", limit: 50
    t.string "usertype", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tbl_tr_requirement_dtls", force: :cascade do |t|
    t.string "tr_no", limit: 10
    t.text "test_requirement_code"
    t.string "Parameter_code", limit: 10
    t.string "Parameter", limit: 60
    t.string "uom", limit: 10
    t.integer "value_1"
    t.string "stencil_no", limit: 11
    t.string "incharge_emp_code", limit: 7
    t.string "incharge_emp_name", limit: 40
    t.string "operator_emp_code", limit: 7
    t.string "operator_emp_name", limit: 40
    t.string "Status", limit: 1
    t.string "created_username", limit: 30
    t.string "modified_username", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

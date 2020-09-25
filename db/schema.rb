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

ActiveRecord::Schema.define(version: 2020_09_25_083153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "edb_dblink_libpq"
  enable_extension "edb_dblink_oci"
  enable_extension "edbspl"
  enable_extension "pldbgapi"
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "departmentname"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string "operator_emp_code", limit: 7
    t.string "operator_emp_name", limit: 40
    t.string "Password", limit: 15
    t.string "email_ID", limit: 50
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

  create_table "tbl_tr_requirement_trns", force: :cascade do |t|
    t.string "tr_no", limit: 10
    t.string "test_requirement_code"
    t.string "test_requirement"
    t.string "no_of_tyres"
    t.string "Status"
    t.string "created_username"
    t.string "modified_username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tbl_tr_sample_trns", force: :cascade do |t|
    t.string "tr_no", limit: 10
    t.string "Product_Type_code"
    t.string "Product_Type"
    t.string "Product_Category_code"
    t.string "Product"
    t.string "Category"
    t.string "Tyre_Size"
    t.string "sku_code", limit: 15
    t.string "sku", limit: 15
    t.string "pattern_code"
    t.string "Pattern"
    t.string "brand_code"
    t.string "Brand_Name"
    t.string "Test_Category_code"
    t.string "Test_Category"
    t.string "Customer_Name"
    t.string "test_reason"
    t.string "Rim_used"
    t.string "Spec"
    t.string "Dept_Categ_code"
    t.string "Dept_Categ"
    t.string "Requesting_Dept_code"
    t.string "SFG_SAP_Reference"
    t.string "no_of_tyres"
    t.string "BOM_Version"
    t.string "Mould_Correction"
    t.string "Building_mcn_type_code"
    t.string "Building_mcn_type"
    t.string "Status"
    t.string "created_username"
    t.string "modified_username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

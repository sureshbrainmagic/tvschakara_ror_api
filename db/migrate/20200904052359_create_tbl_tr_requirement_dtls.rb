class CreateTblTrRequirementDtls < ActiveRecord::Migration[6.0]
  def change
    create_table :tbl_tr_requirement_dtls do |t|
      t.string "tr_no", limit:10
      t.text :test_requirement_code
      t.string :Parameter_code, :limit => 10
      t.string :Parameter, :limit => 60
      t.string :uom, :limit => 10
      t.integer :value_1
      t.string :stencil_no, :limit => 11
      t.string :incharge_emp_code, :limit => 7
      t.string :incharge_emp_name, :limit => 40
      t.string :operator_emp_code, :limit => 7
      t.string :operator_emp_name, :limit => 40
      t.string :Status, :limit => 1
      t.string :created_username, :limit => 30
      t.string :modified_username, :limit => 30
      
      t.timestamps
    end
  end
end

class CreateOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :operators do |t|
      t.string :operator_emp_code, limit: 7
      t.string :operator_emp_name, limit: 40
      t.string :Password, limit: 15
      t.string :email_ID, limit: 50

      t.timestamps
    end
  end
end

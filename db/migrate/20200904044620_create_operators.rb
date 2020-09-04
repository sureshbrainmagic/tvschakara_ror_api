class CreateOperators < ActiveRecord::Migration[6.0]
  def change
    create_table :operators do |t|
      t.string :username, limit: 30
      t.string :Password, limit: 15
      t.string :mobileno, limit: 12
      t.string :emailID, limit: 50
      t.string :usertype, limit: 10

      t.timestamps
    end
  end
end

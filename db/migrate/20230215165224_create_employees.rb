class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.text :fullname
      t.integer :e_number, limit: 8

      t.timestamps
    end
  end
end

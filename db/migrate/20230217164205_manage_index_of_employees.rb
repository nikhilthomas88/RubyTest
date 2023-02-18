class ManageIndexOfEmployees < ActiveRecord::Migration[7.0]
  def change
     add_index :employees, :e_number, unique: true
     add_index :employees, :created_at, order: { created_at: :desc }
  end
end

class ManageIndexOfEmployees < ActiveRecord::Migration[7.0]
  def change
     add_index    :employees, :e_number, unique: true
     add_index    :employees, :id, order: { id: :desc }
     remove_index :employees, :id
  end
end

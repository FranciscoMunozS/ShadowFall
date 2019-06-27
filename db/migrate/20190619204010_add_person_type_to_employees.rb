class AddPersonTypeToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :person_type, :string
  end
end

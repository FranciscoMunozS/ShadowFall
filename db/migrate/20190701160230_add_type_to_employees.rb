class AddTypeToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :employee_type, :boolean
  end
end

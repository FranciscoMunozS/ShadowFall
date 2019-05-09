class AddEmployeeIdToPeriods < ActiveRecord::Migration[5.2]
  def change
    add_column :periods, :employee_id, :integer
  end
end

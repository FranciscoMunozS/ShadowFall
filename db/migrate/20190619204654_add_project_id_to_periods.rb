class AddProjectIdToPeriods < ActiveRecord::Migration[5.2]
  def change
    add_column :periods, :project_id, :integer
  end
end

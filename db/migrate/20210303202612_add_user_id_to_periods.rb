class AddUserIdToPeriods < ActiveRecord::Migration[5.2]
  def change
    add_column :periods, :user_id, :integer
  end
end

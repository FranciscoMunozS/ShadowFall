class AddUserIdToAnalists < ActiveRecord::Migration[5.2]
  def change
    add_column :analists, :user_id, :integer
  end
end

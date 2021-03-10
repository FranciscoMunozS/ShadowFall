class AddProfessionToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :profession, :string
  end
end

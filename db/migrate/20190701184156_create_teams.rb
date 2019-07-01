class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :rut
      t.string :specialty
      t.belongs_to :employee, foreign_key: true

      t.timestamps
    end
  end
end

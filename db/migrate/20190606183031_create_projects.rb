class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :ubication
      t.string :bip
      t.text :description

      t.timestamps
    end
  end
end

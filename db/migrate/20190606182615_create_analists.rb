class CreateAnalists < ActiveRecord::Migration[5.2]
  def change
    create_table :analists do |t|
      t.string :name

      t.timestamps
    end
  end
end

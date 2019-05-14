class CreatePermanences < ActiveRecord::Migration[5.2]
  def change
    create_table :permanences do |t|
      t.string :name
      t.text :description
      t.date :end_date
      t.string :resolution
      t.belongs_to :period, foreign_key: true

      t.timestamps
    end
  end
end

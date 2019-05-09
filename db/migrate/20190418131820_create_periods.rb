class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :start_date
      t.string :end_date
      t.string :resolution
      t.string :working_day
      t.string :quantity

      t.timestamps
    end
  end
end

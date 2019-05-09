class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :rut
      t.string :profession
      t.string :charge
      t.string :amount
      t.string :technical_unit
      t.string :fiscal_inspector

      t.timestamps
    end
  end
end

class AddAmountToPermanences < ActiveRecord::Migration[5.2]
  def change
    add_column :permanences, :amount, :integer
  end
end

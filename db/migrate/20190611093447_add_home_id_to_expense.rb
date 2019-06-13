class AddHomeIdToExpense < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :home_id, :integer
  end
end

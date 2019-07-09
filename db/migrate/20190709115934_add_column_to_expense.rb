class AddColumnToExpense < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :compensated, :boolean
  end
end

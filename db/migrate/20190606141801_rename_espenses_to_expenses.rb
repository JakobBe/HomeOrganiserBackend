class RenameEspensesToExpenses < ActiveRecord::Migration[5.2]
  def change
    rename_table :espenses, :expenses
  end
end

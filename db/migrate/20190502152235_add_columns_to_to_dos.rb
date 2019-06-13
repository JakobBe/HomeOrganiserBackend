class AddColumnsToToDos < ActiveRecord::Migration[5.2]
  def change
    add_column :to_dos, :done, :boolean
    add_column :to_dos, :due_date, :date
    add_column :to_dos, :appointee, :string
  end
end

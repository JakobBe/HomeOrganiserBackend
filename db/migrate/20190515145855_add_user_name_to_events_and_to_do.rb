class AddUserNameToEventsAndToDo < ActiveRecord::Migration[5.2]
  def change
    add_column :to_dos, :user_name, :string
    add_column :events, :user_name, :string
  end
end

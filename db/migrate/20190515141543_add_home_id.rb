class AddHomeId < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :home_id, :integer
    add_column :to_dos, :home_id, :integer
    add_column :events, :home_id, :integer
  end
end

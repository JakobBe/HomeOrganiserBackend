class RenameProfileEmailToSub < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :email, :sub
  end
end

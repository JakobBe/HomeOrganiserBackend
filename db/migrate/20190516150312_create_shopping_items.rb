class CreateShoppingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_items do |t|
      t.integer :user_id
      t.integer :home_id
      t.float :price
      t.boolean :bought
      t.integer :bought_by
      t.string :name
      t.string :info

      t.timestamps
    end
  end
end

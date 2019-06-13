class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.integer :user_id
      t.string :text

      t.timestamps
    end
  end
end

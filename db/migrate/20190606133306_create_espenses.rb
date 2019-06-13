class CreateEspenses < ActiveRecord::Migration[5.2]
  def change
    create_table :espenses do |t|
      t.float :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

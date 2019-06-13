class AddPayPalMeLinkToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pay_pal_me_link, :string
  end
end

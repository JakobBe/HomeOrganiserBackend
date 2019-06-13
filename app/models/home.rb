class Home < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :users
  has_many :to_dos
  has_many :events
  has_many :shopping_items
  has_many :expenses
end

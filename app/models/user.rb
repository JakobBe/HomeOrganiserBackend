class User < ApplicationRecord
  validates :sub, presence: true, uniqueness: true

  has_many :to_dos
  has_many :events
  has_many :shoppping_items
  has_many :expenses
  belongs_to :home
end

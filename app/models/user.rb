class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true

  has_many :to_dos
  has_many :events
  has_many :shoppping_items
  has_many :espenses
  belongs_to :home
end

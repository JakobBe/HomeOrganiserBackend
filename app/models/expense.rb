class Expense < ApplicationRecord
  validates :amount, presence: true

  belongs_to :user
  belongs_to :home

  scope :not_compensated, -> { where(compensated: false) }
end

class ToDo < ApplicationRecord
  belongs_to :user
  belongs_to :home

  def self.user_to_dos(user_id, home_id)
    all.where("appointee = '#{user_id}' or (appointee = 'all' and home_id = '#{home_id}')")
  end

  scope :done, -> { where(done: true) }
  scope :undone, -> { where(done: false) }
  scope :appointed, ->(user_id) { where(appointee: user_id) }
end

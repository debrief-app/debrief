class Account < ActiveRecord::Base
  has_many :departments
  has_many :teams
  has_many :users

  validates :name, presence: true, length: { maximum: 1024 }
end

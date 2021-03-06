class Team < ActiveRecord::Base
  belongs_to :account
  belongs_to :department
  has_many :users

  validates :account, presence: true
  validates :name, presence: true, length: { maximum: 1024 }
end

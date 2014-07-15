class Department < ActiveRecord::Base
  belongs_to :account
  has_many :teams

  validates :account, presence: true
  validates :name, presence: true, length: { maximum: 1024 }
end

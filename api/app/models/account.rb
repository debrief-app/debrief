class Account < ActiveRecord::Base
  has_many :departments
  has_many :teams

  validates :name, presence: true, length: { maximum: 1024 }
end

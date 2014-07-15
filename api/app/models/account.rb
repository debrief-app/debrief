class Account < ActiveRecord::Base
  has_many :departments

  validates :name, presence: true, length: { maximum: 1024 }
end

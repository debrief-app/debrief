class Account < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 1024 }
end

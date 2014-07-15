class Department < ActiveRecord::Base
  belongs_to :account

  validates :name, presence: true, length: { maximum: 1024 }
end

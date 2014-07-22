class Brief < ActiveRecord::Base
  belongs_to :user
  belongs_to :team
  belongs_to :department

  validates :text, presence: true, length: {minimum: 1}
  validates :date, presence: true
end

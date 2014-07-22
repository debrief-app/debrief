class Comment < ActiveRecord::Base
  belongs_to :brief
  belongs_to :user

  validates :text, presence: true, length: {minimum: 1}
end

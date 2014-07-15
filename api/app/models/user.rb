class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  belongs_to :account
  belongs_to :department
  belongs_to :team

  validates :account, presence: true
  validates :email, presence: true
  validates :display_name, length: { maximum: 255 }
end

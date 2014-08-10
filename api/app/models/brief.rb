class Brief < ActiveRecord::Base
  before_create :brief_before_create

  belongs_to :user
  belongs_to :team
  belongs_to :department
  has_many :comments

  validates :text, presence: true, length: {minimum: 1}
  validates :date, presence: true

  private

  def brief_before_create
    self.team_id = self.user.team_id
    self.department_id = self.user.department_id
  end
end

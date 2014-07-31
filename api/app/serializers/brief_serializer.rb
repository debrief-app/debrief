class BriefSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :text, :date, :department_id, :team_id, :user_id
end

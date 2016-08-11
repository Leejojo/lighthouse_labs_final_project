class ResultSerializer < ActiveModel::Serializer
  attributes :id, :was_winner

  belongs_to :user
  belongs_to :quiz
end

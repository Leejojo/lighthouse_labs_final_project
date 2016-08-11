class QuizSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :categories
  has_many :results
end

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text

  belongs_to :category
  has_many :choices
end

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :subject, :color

  belongs_to :quiz
  has_many :questions
end

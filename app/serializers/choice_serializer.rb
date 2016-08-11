class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :text, :is_correct

  belongs_to :question
end

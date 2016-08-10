class Choice < ApplicationRecord
  belongs_to :question, optional: true

  validates :text, presence: true
  validates :is_correct, inclusion: { in: [true, false] }
end

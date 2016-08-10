class Question < ApplicationRecord
  belongs_to :category
  has_many :choices, dependent: :destroy

  validates :text, presence: true
end

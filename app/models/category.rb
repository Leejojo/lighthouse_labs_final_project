class Category < ApplicationRecord
  belongs_to :quiz
  has_many :questions, dependent: :destroy

  validates :subject, presence: true
  validates :color, presence: true
end

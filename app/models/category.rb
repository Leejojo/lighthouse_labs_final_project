class Category < ApplicationRecord
  belongs_to :quiz, optional: true
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions

  validates :subject, presence: true
  validates :color, presence: true
end

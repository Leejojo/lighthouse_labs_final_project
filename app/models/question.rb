class Question < ApplicationRecord
  belongs_to :category, optional: true
  has_many :choices, dependent: :destroy
  accepts_nested_attributes_for :choices

  validates :text, presence: true
end

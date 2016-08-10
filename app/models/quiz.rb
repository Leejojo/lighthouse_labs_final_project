class Quiz < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :categories

  validates :name, presence: true
end

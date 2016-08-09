class Quiz < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :results, dependent: :destroy
end
class User < ApplicationRecord
  has_many :results, dependent: :destroy

  validates :email, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end

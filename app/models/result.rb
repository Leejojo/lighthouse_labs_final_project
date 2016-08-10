class Result < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  validates :was_winner, inclusion: { in: [true, false] }
end

class User < ApplicationRecord
  has_many :results, dependent: :destroy
end
class MainCategory < ApplicationRecord
  has_many :meals
  has_many :suggestions
  validates :name, presence: true
end

class WineType < ApplicationRecord
  has_many :suggestions
  has_many :wines
  validates :name, presence: true
end

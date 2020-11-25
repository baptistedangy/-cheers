class WineRegion < ApplicationRecord
  has_many :suggestions
  has_many :wines
  has_one_attached :photo
  validates :name, presence: true
end

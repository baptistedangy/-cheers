class Wine < ApplicationRecord
  belongs_to :wine_region
  belongs_to :wine_type
  has_many :user_selections
  validates :name, :description, :price, :millesime, :cepage, presence: true
end

class Meal < ApplicationRecord
  belongs_to :main_category
  belongs_to :cooking_method
  has_many :user_selections
  validates :name, presence: true
end

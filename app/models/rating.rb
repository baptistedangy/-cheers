class Rating < ApplicationRecord
  belongs_to :user_selection
  validates :rating, presence: true
end

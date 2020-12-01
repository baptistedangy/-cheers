class Rating < ApplicationRecord
  belongs_to :user_selection
  validates :note, presence: true
end

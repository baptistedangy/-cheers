class Suggestion < ApplicationRecord
  belongs_to :wine_region
  belongs_to :wine_type
  belongs_to :cooking_method
  belongs_to :main_category
end

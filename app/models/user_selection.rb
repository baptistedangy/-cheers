class UserSelection < ApplicationRecord
  belongs_to :wine
  belongs_to :user
  belongs_to :meal
  has_many :ratings
end

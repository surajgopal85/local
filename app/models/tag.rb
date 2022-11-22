class Tag < ApplicationRecord
  has_many :preferences, dependent: :destroy
  has_many :experience_tags, dependent: :destroy
end

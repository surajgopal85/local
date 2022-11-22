class Trip < ApplicationRecord
  belongs_to :user
  has_many :experiences, through: :trip_experiences
  has_many :trip_experiences, dependent: :destroy
end

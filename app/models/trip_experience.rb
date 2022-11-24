class TripExperience < ApplicationRecord
  belongs_to :experience
  belongs_to :trip

  validates :experience_id, uniqueness: { scope: :trip_id }
end

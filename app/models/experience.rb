class Experience < ApplicationRecord
  belongs_to :local, class_name: "User", foreign_key: :local_id
  has_many :experience_tags, dependent: :destroy
  has_many :tags, through: :experience_tags
  has_many :trip_experiences, dependent: :destroy
  has_many :trips, through: :trip_experiences

  accepts_nested_attributes_for :experience_tags, allow_destroy: true

  has_many :messages
end

class Experience < ApplicationRecord
  belongs_to :local, class_name: "User", foreign_key: :local_id
  has_many :experience_tags, dependent: :destroy
  has_many :tags, through: :experience_tags
  has_many :trip_experiences, dependent: :destroy
  has_many :trips, through: :trip_experiences

  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :experience_tags, allow_destroy: true

  validates_presence_of :description, :location, :image_url, :name, :address

  has_many :messages, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

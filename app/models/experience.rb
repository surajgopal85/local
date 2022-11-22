class Experience < ApplicationRecord
  belongs_to :local, class_name: "User", foreign_key: :local_id
  has_many :experience_tags, dependent: :destroy
end

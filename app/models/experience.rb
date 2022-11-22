class Experience < ApplicationRecord
  belongs_to :local, class_name: "User", foreign_key: :local_id
end

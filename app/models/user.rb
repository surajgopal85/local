class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiences, foreign_key: :local_id, dependent: :destroy
  has_many :trips, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :tags, through: :preferences
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :preferences,
                                reject_if: :all_blank,
                                allow_destroy: true
end

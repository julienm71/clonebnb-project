class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :description, presence: true
  validates :name, presence: true
  validates :photo, presence: true
  validates :address, presence: true
end

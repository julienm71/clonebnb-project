class Place < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :description, presence: true
  validates :name, presence: true
  validates :photo, presence: true
  validates :address, presence: true
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :places
  has_many :reservations
  mount_uploader :photo, PhotoUploader
end

class Reservation < ApplicationRecord
  belongs_to :user, :place, :category
  validates :reserved_at, presence: true
end


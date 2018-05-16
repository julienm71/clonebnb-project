class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :category
  validates :reserved_at, presence: true
end


class Reservation < ApplicationRecord
  belongs_to :user, :place, :category
end


class Review < ApplicationRecord
  belongs_to :place
  validates :content, length: { minimum: 20 }
end

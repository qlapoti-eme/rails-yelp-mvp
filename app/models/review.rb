class Review < ApplicationRecord
  RATING = (0..5)
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
end

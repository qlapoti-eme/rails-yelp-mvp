class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
end

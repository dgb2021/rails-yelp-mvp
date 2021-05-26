class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true

  VALID_STATUSES = (0..5).to_a
  validates :rating, inclusion: { in: VALID_STATUSES }, numericality: { only_integer: true }

end

class Review < ApplicationRecord
  validates :content, :rating, presence: true
  belongs_to :restaurant
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end

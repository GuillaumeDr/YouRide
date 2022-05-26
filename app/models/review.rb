class Review < ApplicationRecord
  belongs_to :ski
  belongs_to :user
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: (0..5) }
  validates :comment, presence: true
end

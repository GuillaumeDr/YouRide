class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)

  belongs_to :ski
  belongs_to :user
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
  validates :comment, presence: true
end

class Ski < ApplicationRecord
  has_one_attached :photo
  has_many :bookings

  validates :types, presence: true
  validates :price, presence: true
  validates :size, presence: true
end

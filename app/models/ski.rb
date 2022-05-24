class Ski < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :types, presence: true
  validates :price, presence: true
  validates :size, presence: true
end

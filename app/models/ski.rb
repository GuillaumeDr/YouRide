class Ski < ApplicationRecord
  has_many :bookings, dependent: :destroy
  # belongs_to :user
  has_one_attached :photo

  validates :types, :price, :size, :city, presence: true
end

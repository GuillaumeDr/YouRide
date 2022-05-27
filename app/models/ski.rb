class Ski < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  validates :types, :price, :size, :city, presence: true

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  SKITYPE = ['Alpine skis', 'Downhill skis', 'Cross-country skis', 'Nordic skis', 'Snowboard']

  def average
    average = 0
    reviews.each do |review|
      average += review.rating
    end
    (average /= reviews.count).round(1) if average > 0
  end
end

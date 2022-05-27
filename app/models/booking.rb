class Booking < ApplicationRecord
  belongs_to :ski
  belongs_to :user
  after_initialize :init

  # validates :start_date, :end_date, presence: true

  def init
    self.status  ||= "pending"           #will set the default value only if it's nil
  end

  def getinfo
    time = end_date.mjd - start_date.mjd
    price = time * ski.price
    return {time: time, price: price}
  end

end

class ProfilesController < ApplicationController

  def myskis
    @myskis = current_user.skis
    @mybookings = Booking.joins(:ski).where("skis.user_id = #{current_user.id}")
  end

  def reservations
    @myreservations = current_user.bookings

  end
end

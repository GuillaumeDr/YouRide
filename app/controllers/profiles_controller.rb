class ProfilesController < ApplicationController

  def myskis
    @myskis = current_user.skis
    @mybookings = current_user.bookings
  end
end

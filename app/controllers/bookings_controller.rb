class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.ski_id = params[:ski_id]
    if @booking.save
      redirect_to ski_path(@booking.ski)
    else
      render template: "skis/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

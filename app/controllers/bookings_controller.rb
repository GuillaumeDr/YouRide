class BookingsController < ApplicationController
  before_action :set_booking, only: [:update]
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

  def update
    @booking.update(booking_params)
    redirect_to myskis_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

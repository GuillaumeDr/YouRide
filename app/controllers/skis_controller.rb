class SkisController < ApplicationController
  before_action :set_ski, only: [:show, :edit, :update, :destroy]

  def index
    @skis = Ski.all
  end

  def search
    if params[:city].present?
      @skis = Ski.near("%#{params[:city]}%", 10)
      search_types
      if @skis.present? == false
        @skis = Ski.near("%#{params[:city]}%", 200)
        search_types
      end
      if @skis.present? == false
        @skis = Ski.all
        search_types
        @message = "Nothing find close to "
      end
    else
      @skis = Ski.all
      search_types
    end
    @markers = @skis.geocoded.map do |ski|
      {
        lat: ski.latitude,
        lng: ski.longitude
      }
    end
  end

  def show
    @booking = Booking.new
    @review = Review.new
    @bookings = @ski.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to: booking.end_date
      }
    end
  end

  def new
    @ski = Ski.new
  end

  def create
    @ski = Ski.new(ski_params)
    @ski.user_id = current_user.id
    if @ski.save
      redirect_to ski_path(@ski)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @ski.update(ski_params)
    redirect_to ski_path(@ski)
  end

  def destroy
    @ski.destroy
    redirect_to myskis_path
  end

  private

  def ski_params
    params.require(:ski).permit(:types, :available, :poles, :price, :size, :photo, :city)
  end

  def set_ski
    @ski = Ski.find(params[:id])
  end

  def search_types
    if params[:type].present? && params[:type] != "All type"
      @skis = @skis.where("types ILIKE ?", "%#{params[:type]}%")
    end
  end
end

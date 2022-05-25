class SkisController < ApplicationController
  before_action :set_ski, only: [:show, :edit, :update, :destroy]

  def index
    @skis = Ski.all
  end

  def search

    if params[:city].present?
      @skis = Ski.where("city ILIKE ?", "%#{params[:city]}%")
      @markers = @skis.geocoded.map do |ski|
        {
          lat: ski.latitude,
          lng: ski.longitude
        }
      end
    else
      @skis = Ski.all
    end
  end

  def show
    @booking = Booking.new
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
end

class SkisController < ApplicationController
  before_action :set_ski, only: [:show, :edit, :update, :destroy]

  def index
    @skis = Ski.all
  end

  def show
  end

  def new
    @ski = Ski.new
  end

  def create
    @ski = Ski.new(ski_params)
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
    redirect_to skis_path
  end

  private

  def ski_params
    params.require(:ski).permit(:type, :available, :poles, :price, :size, :photo)
  end

  def set_ski
    @ski = Ski.find(params[:id])
  end
end

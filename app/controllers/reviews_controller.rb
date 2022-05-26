class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @ski = Ski.find(params[:ski_id])
    @review.ski = @ski
    @review.user = current_user
    if @review.save
      redirect_to ski_path(@ski)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end

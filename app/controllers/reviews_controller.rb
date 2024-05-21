class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

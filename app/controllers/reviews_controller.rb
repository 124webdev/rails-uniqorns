class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path(@booking), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end

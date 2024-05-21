class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
  end
end


private

  def bookings_params
    params.require(:booking).permit(:start_date :end_date)
  end
end

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

# def reject
#   @booking.update!(status: :rejected)
# end

def reject
@booking = Booking.find(params[:id])
@booking.rejected!
end

def confirm
  @booking.update!(status: :accepted)
end

private

  def bookings_params
    params.require(:booking).permit(:start_date :end_date)
  end
end

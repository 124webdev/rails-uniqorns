class BookingsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @bookings = Booking.where(user: @user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @uniqorn = Uniqorn.find(params[:uniqorn_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @user = User.find(current_user.id)
    @uniqorn = Uniqorn.find(params[:uniqorn_id])
    @booking.user = @user
    @booking.uniqorn = @uniqorn

    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.rejected!
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.accepted!
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

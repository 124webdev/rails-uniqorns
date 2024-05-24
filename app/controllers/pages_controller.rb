class PagesController < ApplicationController
  def home
    @uniqorns = Uniqorn.where(user: current_user)
    @bookings = Booking.where(uniqorn: @uniqorns)
    @bookings = @bookings.where(status: "pending")
  end

  def profile
    @uniqorns = Uniqorn.where(user: current_user)
    @bookings = Booking.where(uniqorn: @uniqorns)
  end

  def privacypolicy
  end

  def reject
    @booking = Booking.find(params[:format])
    @booking.rejected!
    redirect_to pages_profile_path
  end

  def confirm
    @booking = Booking.find(params[:format])
    @booking.accepted!
    redirect_to pages_profile_path
  end
end

class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(current_user.id)
    @uniqorns = Uniqorn.where(user: @user)
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

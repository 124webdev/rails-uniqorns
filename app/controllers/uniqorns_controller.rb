class UniqornsController < ApplicationController
  before_action :set_uniqorn, only: [:show, :destroy]

  def index
    @uniqorns = Uniqorn.all

    return unless params[:name].present?

    @uniqorns = Uniqorn.search_by_name(params[:name])
  end

  def show
    @reviews = Review.where(booking: @uniqorn.bookings)
  end

  def new
    @uniqorn = Uniqorn.new
  end

  def create
    @uniqorn = Uniqorn.new(uniqorn_params)
    @uniqorn.user = User.find(current_user.id)
    if @uniqorn.save
      redirect_to uniqorns_path(@uniqorn)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @uniqorn.destroy
    redirect_to pages_profile_path
  end

  private

  def set_uniqorn
    @uniqorn = Uniqorn.find(params[:id])
  end

  def uniqorn_params
    params.require(:uniqorn).permit(:id, :price_per_day, :name, :age, :can_fly, :color, :speed, :photo)
  end
  
end

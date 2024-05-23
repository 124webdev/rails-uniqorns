class UniqornsController < ApplicationController
  before_action :set_uniqorn, only: [:show]

  def index
    if user_signed_in?
      @uniqorns = Uniqorn.where.not(user: current_user.id)
    else
      @uniqorns = Uniqorn.all
    end
  end

  def show
    @uniqorn = Uniqorn.find(params[:id])
    @reviews = Review.where()
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

  private

  def set_uniqorn
    @uniqorn = Uniqorn.find(params[:id])
  end

  def uniqorn_params
    params.require(:uniqorn).permit(:id, :price_per_day, :name, :age, :can_fly, :color, :speed)
  end
end

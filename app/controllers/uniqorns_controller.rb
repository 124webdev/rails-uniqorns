class UniqornsController < ApplicationController
  before_action :set_uniqorn, only: [:show]

  def index
    @uniqorns = Uniqorn.all

    return unless params[:name].present?

    @uniqorns = @uniqorns.where("name @@ :query", query: params[:name])
  end

  def show
    @uniqorn = Uniqorn.find(params[:id])
    # @reviews = Review.where
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
    params.require(:uniqorn).permit(:id, :price_per_day, :name, :age, :can_fly, :color, :speed, :photo)
  end
end

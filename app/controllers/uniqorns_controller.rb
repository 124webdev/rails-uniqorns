class UniqornsController < ApplicationController

  def index
    @uniqorns = Uniqorn.all
  end

  def show
    @uniqorn = Uniqorn.find(params[:id])

  end


  def new
    @uniqorn = Uniqorn.new
  end


  def create
    @uniqorn = Unqiorn.new(uniqorn_params)
    if @uniqorn.save
      redirect_to uniqorns_path(@uniqorn)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def uniqorn_params
    params.require(:uniqorn).permit(:name, :age, :can_fly, :color, :speed)
  end
end

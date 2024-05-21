class UniqornsController < ApplicationController

  def index
    @uniqorns = Uniqorn.all
  end

  def show
    @uniqorn = Uniqorn.find(params[:id])

  end



  # private

  # def uniqorn_params
  #   params.require(:uniqorn).permit(:name, :age, :can_fly, :color, :speed)
  # end
end

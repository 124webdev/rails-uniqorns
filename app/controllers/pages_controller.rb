class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(current_user.id)
    @uniqorns = Uniqorn.where(user: @user)
  end

  def privacypolicy
  end
  
end

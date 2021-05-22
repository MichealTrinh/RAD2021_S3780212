class ApplicationController < ActionController::Base
  def logged_in?
    !current_user.nil?
  end

  def current_user?(user)
    user == current_user
  end

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    end
  end

  def incrementTimesSaved
    @product = Product.find_by(:id => params[:id].to_i)
    @product.update(:timesSaved => (@product.timesSaved + 1))
    redirect_back :fallback_location => root_url
  end

  def logged_in_user
    unless logged_in?
      redirect_to users_url
    end
  end
end

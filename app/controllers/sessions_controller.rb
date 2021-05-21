class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
        log_in user

        if(session[:cart_item])
          @item = Cart.new(session[:cart_item])
          @item.update(user_id: session[:user_id])
          @item.save
          session[:cart_item] = nil
        end

        redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  def forget(user)
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end
end

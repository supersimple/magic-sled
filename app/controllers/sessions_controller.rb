class SessionsController < ApplicationController
  
  def new
    if current_user
      redirect_to root_url
    end
    render layout: 'login'
  end
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to enter_url, notice: "Signed out!"
  end
end
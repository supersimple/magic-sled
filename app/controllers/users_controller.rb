class UsersController < ApplicationController
  before_filter :require_login
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    current_user.name = params[:user][:name]
    current_user.email = params[:user][:email]
    if current_user.save
      flash[:response] = "Your profile information has been updated."
    else
      flash[:error] = "Your profile information could not be saved."
    end
    redirect_to profile_settings_path
  end
  
end
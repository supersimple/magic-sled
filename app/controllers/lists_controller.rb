class ListsController < ApplicationController
  
  before_filter :require_login
  
  def index
    @new_list = List.new(user_id: current_user.id)
    @lists = current_user.lists
  end
  
  def new
    
  end
  
  def create
    @new_list = List.new(user_id: current_user.id, title: params[:list][:title], description: params[:list][:description])
    @new_list.event_time = params[:list][:event_time] unless params[:list][:event_time].empty?
    if @new_list.save
      flash[:response] = "Your list has been created."
    else
      flash[:error] = "Your list could not be created."
    end
    
    redirect_to :user_lists
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
  
  end
  
  def delete
    
  end
  
  def send_assignments
    
  end
  
  def assignments
    
  end
  
  
end
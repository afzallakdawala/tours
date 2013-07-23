class ToursController < ApplicationController
  
  def index
    @tours = Tour.find_by_id(session[:user_id])
  end

  def new
  end

  def create
    
  end

  def edit
    
  end

  def show
    
  end

  def dashboard
  end

  def logout
    session[:user_id] = nil
    session[:user_name] = nil
    session[:user_email] = nil
    redirect_to root_url
  end

end

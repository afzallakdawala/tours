class ToursController < ApplicationController
  
  def index
    @tours = Tour.search(params[:page],session[:user_id])

  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.create(params_permission)
    if @tour.save
      redirect_to tours_path
    else  
      render :action => "new"
    end  

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

  private
  def params_permission
    params.require(:tour).permit(:depature_date, :days, :about, :available, :tour_id)
  end


end

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
      redirect_to tours_path, :notice => "Record added successfully, Your tour will be in pending status for now
       after approval it show in search list!!!"
    else  
      render :action => "new"
    end  

  end

  def edit
    @tour = Tour.find_by_id_and_tour_id(params[:id],session[:user_id])
    
    if @tour.nil?
      redirect_to new_tour_path
    end

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
    params.require(:tour).permit(:depature_date, :days, :about, :available, :tour_id, :pilgrim_type, :amount)
  end


end

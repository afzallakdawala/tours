class ToursController < ApplicationController
  
  helper_method :sort_column, :sort_direction

  def index
    @tours = Tour.search(params[:page],session[:user_id]).order(sort_column + " " + sort_direction)
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

  def update
    @tour = Tour.find_by_id_and_tour_id(params[:id],session[:user_id])    
    if @tour.update_attributes(params_permission)
      redirect_to tours_path, :notice => "Record successfully updated."
    else
      render :action => "edit"
    end
  end

  def approve

    admin_access

    tour = Tour.find(params[:id])
    tour.status = 1
    tour.save!

    redirect_to tours_admin_tours_path, :notice => "successfully approved tour"
  end


  def destroy
    admin_access
    @tour = Tour.find(params[:id])
    @tour.delete
    redirect_to tours_admin_tours_path, :notice => "Entry deleted successfully"    
  end


  def search

    if params[:view].present?

      pilgrim_type = params[:search][:pilgrim_type]
      month = params[:months]

      if pilgrim_type == "1"
        @pilgrim_type_name = "Haj"
      elsif
        pilgrim_type == "2" 
        @pilgrim_type_name = "Umrah"
      elsif pilgrim_type == "3"
        @pilgrim_type_name = "Ziyarat"
      else
        @pilgrim_type_name = "**Invalid input**"
      end  

      @alltours = Tour.getAllAvailableTours(pilgrim_type,month, sort_table = params[:sort])         
      
      render "search_preview"
    end

  end

  def logout
    session[:user_id] = nil
    session[:user_name] = nil
    session[:user_email] = nil
    session[:user_admin] = nil
    redirect_to root_url
  end

  def admin
    admin_access
    @tours = Tour.getAllTourByStatus(0, params[:sort])
  end


  private
  def params_permission
    params.require(:tour).permit(:depature_date, :days, :about, :available, :tour_id, :pilgrim_type, :amount)
  end
  
  def sort_column
    Tour.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end  

  def admin_access
    if !session[:user_admin].present?
      redirect_to root_url
    end
  end  


end

class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_permission)
    
    if @user.save
      redirect_to users_thank_you_path
    else  
      render :action => "new"
    end  

  end

  def edit
    @user = User.find(session[:user_id])    
    if @user.nil?
      redirect_to tours_path
    end

  end

  def update
    @user = User.find(session[:user_id])    
    if @user.update_attributes(params_permission)
      redirect_to tours_path, :notice => "Setting has been changed successfully"
    else
      render :action => "edit"
    end
  end


  def login

    if params[:login].present?

      user = User.authenticate(params[:username],params[:password])
      notice = ""      

      if !user.blank?
        if user.verified_tour.nil?
          notice = "Your account still not verified"          
        else
          session[:user_id] = user.id
          session[:user_name] = user.name
          session[:user_email] = user.email_id          
          redirect_to tours_path, :notice => "#{notice}"          
        end
      else 
        notice = "Invalid login!!!"  
        redirect_to users_login_path, :notice => "#{notice}"
      end
      
    end

  end

  def thank_you
  end

  private
  def params_permission
    params.require(:user).permit(:name, :address, :country, :city, :tel, :mobile, :email_id, :password)
  end


end

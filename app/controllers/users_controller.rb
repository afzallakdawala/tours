class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_permission)

    if @user.save
      redirect_to( users_path, :notice => "Record saved successfully.")
    else  
      render :action => "new"
    end  

  end

  def login
  end
  

  private
  def params_permission
    params.require(:user).permit(:name, :address, :country, :city, :tel, :mobile, :email_id, :password)
  end


end

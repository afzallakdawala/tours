class UserController < ApplicationController

  def index
    @user = User.all
  end

  def new  
    @user = User.new
  end

  def edit  
    #@operator = Operator.find(params[:id])
  end

  def show
  end

  def create
    @user = User.new(params[:user])
   
    if @user.save
      redirect_to user_new, :notice => "Record saved successfully."
    else
      render :action => "new"    
    end
  end

  def update
    # @operator = Operator.find(params[:id])

    # if @operator.update_attributes(params[:operator])
    #   redirect_to(operators_path, :notice => "Record Updated succussfully.")
    # else
    #   render :action => "edit"  
    # end 
  end

  def destroy
  end   

  def login
  end

end

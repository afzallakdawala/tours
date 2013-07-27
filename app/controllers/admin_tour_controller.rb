class AdminTourController < ApplicationController

  def index
    @tours = Tour.getAllTourByStatus(0)
  end

  def new
    @tour = Tour.new
  end

  def edit
    #@operator = Operator.find(params[:id])
  end

  def show
  end

  def create
#    @operator = Operator.new(params[:operator])
#    @operator_routes = OperatorRoute.new()
#
#    if @operator.save
#      redirect_to operators_path, :notice => "Record saved successfully."
#    else
#      render :action => "new"
#    end
  end

  def update
#    @operator = Operator.find(params[:id])
#
#    if @operator.update_attributes(params[:operator])
#      redirect_to(operators_path, :notice => "Record Updated succussfully.")
#    else
#      render :action => "edit"
#    end
  end

  def destroy
#    @operator = Operator.find(params[:id])
#    @operator.destroy
#    redirect_to(operators_url, :notice => "Record deleted succussfully.")
  end
  
end

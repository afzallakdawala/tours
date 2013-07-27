class AdminsController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    #admin_access()
    @tours = Tour.getAllTourByStatus(0, params[:sort])
  end

end

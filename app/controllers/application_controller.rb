class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def admin_access
    if !session[:user_admin].present?
      redirect_to root_url
    end
  end  
  
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception
	
  def login_required
    if session[:user]
      return true
    end
    render nothing: true, status: :forbidden
    return false 
  end
 
  def current_user
    session[:user]
  end

end

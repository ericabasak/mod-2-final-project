class ApplicationController < ActionController::Base
  
  helper_method :logged_in?
  
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def logged_in?
    current_user ? true : false
  end

end
